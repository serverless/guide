<!--
title: Testing
menuText: Testing
menuOrder: 12
description: Some best practices and strategies around testing serverless apps.
layout: Doc
publish: false
-->

## Testing

### Introduction

[Brief intro into unit testing and integration testing]

### Unit Testing

Lambda functions are ideally small — a few hundred lines of code at the most — taken up mostly by error handling; the happy path should be very short, or at least relatively straightforward. Thus, introducing abstractions can create a lot of code bloat. 

When thinking about testing, it's useful with serverless functions to think in terms of unit tests that are performed against a function in isolation, and integration tests that test the system as a whole. Unit tests can be performed locally, because they just require the code for the function, but integration tests involving SaaS can really only be performed on the deployed system (some platforms may offer local executions as part of a deployed system, which mitigates this somewhat). So what should serverless function unit tests look like? For an example, we'll use the AWS Python SDK, [boto3](https://boto3.readthedocs.io/en/latest/).

A serverless function, by definition, can only have side effects by using other services. Unlike in a traditional, non-serverless system, it’s less necessary to abstract out the service invocations, for two reasons. One, in a serverless/SaaS-based system, abstraction isn’t worth it for getting around the level of vendor lock-in that comes with these designs; a lowest-common denominator interface that can talk to both, say, AWS DynamoDB and Google Cloud Bigtable is going to have limited functionality with basically no opportunities to take advantage of either service’s optimization techniques. Two, abstracting the service invocations for the purposes of testing is unnecessary, and, in fact, creates extra work! The AWS SDK provides mechanisms for stubbing out SDK calls. There are options for the JavaScript SDK in [aws-sdk-mock](https://www.npmjs.com/package/aws-sdk-mock) and [mock-aws](https://www.npmjs.com/package/mock-aws), but if you code in Python, you can use [placebo](https://github.com/garnaat/placebo) (though there is also [moto](https://github.com/spulec/moto)). With placebo, you passively record SDK calls on a real session, and then for testing you can instruct boto3 to use the recorded response instead of actually making the call. So your function can happily proceed to directly use the SDK (without abstractions), and it’ll never know that it’s inside a testing environment, not actually talking to the outside world.

There’s one caveat here: the way boto3 works, to set up the intercept, you have to call a method on the session that is being used by a given client or resource, and there is no hook provided at the package level to inject this into the Session constructor. An unrelated detail: boto3 sessions, clients, and resources are relatively expensive to create. For these two reasons, you can use one minor abstraction across your functions: create a class that provides factory methods for sessions, clients, and resources. This class should provide a hook for injecting placebo into the session, and also cache the sessions, clients, and resources, which will then reduce the overhead across successive function invocations. It could look more or less like this:

```
# in package boto3wrapper
import boto3
class Boto3Wrapper(object):
    _SESSION_CACHE = {}
    SESSION_CREATION_HOOK = None
    @classmethod
    def get_session(cls, **kwargs):
        key = tuple(sorted(kwargs.items()))
        if key in cls._SESSION_CACHE:
            return cls._SESSION_CACHE[key]
        session = boto3.Session(**kwargs)
        if cls.SESSION_CREATION_HOOK:
            session = cls.SESSION_CREATION_HOOK(session)
        cls._SESSION_CACHE[key] = session
        return session
    # similar for client and resource, using get_session to obtain
    # a session, and also caching the objects
```

In a function, you use it in place of directly creating Session, Client, and Resource objects:

```
from boto3wrapper import Boto3Wrapper
def handler(event, context):
    # replacing dynamodb = boto3.resource('dynamodb')
    dynamodb = Boto3Wrapper.get_resource('dynamodb')
    # use as normal
    table = dynamodb.Table('MyTable')
```
Note that since the caching is done at the class level, it persists inside a given function container between invocations.

Unit tests can then use this functionality:

```
import unittest2, os.path
from boto3wrapper import Boto3Wrapper
class MyTest(unittest2.TestCase):
    def setUp(self):
        def attach_placebo(session):
            path = os.path.join(
                os.path.dirname(__file__),
                'placebo')
            pill = placebo.attach(session, data_path=path)
            return session
        Boto3Wrapper.SESSION_CREATE_HOOK = attach_placebo
    def test_function_requirement_1(self):
        # perform test, Lambda function will automatically get
        # placebo injected on its sessions
```

This approach for functions to be written as concisely as possible, focusing on business logic, and letting abstraction take place at the architecture level, in the separation of code and APIs between functions.

<!-- How unit testing in serverless needs a new perspective?
Why abstracting out service invocations is not optimal?
How can mocking / stubbing calls help?
Any challenges? -->

### Integration Testing

In serverless architectures, control over many — or even most — components is given up. This is generally true of using SaaS products, but with a fully serverless system, the number of points where the developer has full control is further reduced. On AWS, user code is limited to Lambda functions, API Gateway mappings, and IoT rules, which gives no ability to, for example, induce a premature shutdown of the underlying EC2 instance handling an API Gateway connection, or cause SNS to fail when invoked by an event on S3. While the compute components of serverless systems are generally stateless (a good practice), this doesn’t mean that, in a degraded system, they will meet performance requirements (e.g., latency, data loss, management of distributed transactions, etc.).

While unit testing of serverless function code is fairly straightforward, as we've seen above, this does not suffice for verifying that a full system is production-ready; integration testing is required. However, integration testing for serverless architectures presents a problem. For the purpose of this section, we will assume the system uses solely AWS services. How can we test the situation where DynamoDB has less-than-perfect reliability? Does our system degrade gracefully? Does our logging and monitoring system adequately inform us of the problems?

In traditional architectures, a system like Netflix’s [Chaos Monkey](https://github.com/Netflix/SimianArmy/wiki/Chaos-Monkey) (and related pieces of the [simian army](https://github.com/Netflix/SimianArmy)) serves this purpose, by randomly shutting down VMs and interfering with network traffic. If a system has no SaaS components, nearly every error condition can be tested this way.

Using SaaS components, we have no way to induce those components to behave abnormally. In a fully serverless system, the only control we have is over the code we put in. Given that constraint, how can we do integration testing similar to Chaos Monkey? What would Monkeyless Chaos look like?

With the starting assumption that we are using only AWS services, and the further assumption that we are using Python (just to pick a particular SDK; the requirements work for all languages), we could establish some requirements for such a system:
Requirements for Monkeyless Chaos

* A system for injecting errors into boto3 SDK calls
 * This exists, and botocore’s [Stubber](https://github.com/boto/botocore/blob/develop/botocore/stub.py) class provides a template for implementing a more focused error-injection class
* A system for intercepting the creation of boto3 Sessions, Clients, and Resources
 * The same injection system in boto3 will work for this
 * This is so we can inject the error injector when the chaos library is loaded
* A system for specifying the errors to inject and how often (and where) they should appear
 * Service errors can be referred to by name, as the service definitions in botocore suffice to translate that into an actual exception 
 * We also need network errors, such as latency or timeouts, as well as, perhaps, corrupted data
 * Allow placebo’s pill format for direct specification of return
 * This system should allow for varying degrees of specificity. For example, from “this particular Lambda can’t reach Kinesis 60% of the time” to “all requests to Kinesis from all Lambdas fail”
 * The error specifications should be able to be changed at run time, without requiring redeployment, to allow simulating outage scenarios (e.g., how long does recovery take once an outage is over?).

It should be possible to deploy the system without any of this code included at all, so that it would be impossible to use it to cause system degradation by accidental or malicious means.
This system would likely use a DynamoDB table, shared by all components of the system, to satisfy requirement #3. The table name would be provided to the Lambda function through environment variables. The error specifications themselves could be provided through environment variables, but are then not adjustable at runtime.

To extend this beyond the use of AWS services, the first logical step is HTTP calls. The system should allow similar specifications for HTTP errors, and a way to inject these errors into common HTTP libraries like requests.


<!-- Challenges in writing integration tests?
Integration testing: Local vs Live
Testing that all functions for a service work in cohesion as part of a larger workflow
Testing that the system is resilient to degradation or stability of dependent services
Monkeyless Chaos
Describe the pattern, its pieces, maybe a diagram
Requirements
Suggestions for building such a system -->