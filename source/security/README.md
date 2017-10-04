<!--
title: Security
menuText: Security
menuOrder: 17
description: Highlight concerns and challenges around serverless.
layout: Doc
publish: false
-->

## Security

Serverless is ushering in a new age of application development, but this revolution is not problem free. Most notably, when dealing with serverless, we must completely rethink the way we secure our applications. How do we add security controls when we ourselves don’t have control over the operating system that executes our code? How do we add security controls when the network is abstracted? In the following piece we’ll try to provide some useful answers to these questions.

##### What are the new concerns and challenges?

The main challenge when it comes to serverless security is that traditional security solutions don’t have the same efficacy with this new architecture. Traditional security solutions monitor servers and the network communication between them. In serverless however, both the servers and the network are abstracted. Furthermore, serverless functions are inherently distributed and therefore visibility is limited and normal flows are difficult to define.

Additionally, implementing serverless leads to a significant increase in the amount of resources in our cloud environment that require monitoring.

Other concerns include the faster pace at which the CI/CD processes is executed, and the sudden simplicity of attaching new input sources (such as creating a new trigger) to an application which can serve as a potential entry point for attackers.

##### Are existing security best practices relevant?

Not only are existing best practices still relevant, but there are certain best practices that become more critical than they were in the past. These include keeping the functions’ permissions least privileged and maintaining a least privileged build system.

There are many other existing best practices for security that are indeed relevant for serverless. For example, during the development and application design process, it is highly recommended that the amount of code that can access sensitive data be reduced, exceptions are handled and input is validated. It is also a good practice to avoid embedding secrets and access keys in code.

Regarding the CI/CD processes, it is still best to integrate AppSec tests, both static and dynamic. And it’s also still important to integrate tools that scan your third party libraries for potential vulnerabilities and try to keep them up-to-date.
It's recommended to use the popular frameworks for the development and deployment processes.

### Pros Of Serverless

There are many benefits to being serverless. First and foremost, the cloud provider is responsible for managing the infrastructure. The code is executed in a pre-patched container image, and thus OS and Kernel vulnerabilities are no longer an operative issue. When implementing serverless architecture, we place full trust in the cloud provider to maintain the image in which the code is executed.

Secondly, serverless functions are ephemeral and often limited in their execution time. This fact makes it harder, **however not impossible**, for attackers to gain persistency in the execution environment.

And a third advantage in serverless is the features provided by the SaaS services that are connected to the functions. For example, API Gateway services provide the ability to throttle and define a quota on the amount of requests that go through.

### A Dynamic Attack Surface Area

The attack surface in serverless changes dramatically. The complex data flows that define a fully serverless architecture, combined with the proliferation of functions and the lack of visibility, make it much harder to understand, map and test the behavior of an application. And as the amount of resources in an account grows, it becomes harder to monitor the normal state and allows attackers to potentially hide their activity.

### Data At Rest And Data In Transit

Serverless functions are stateless, thus data must be stored in the cloud provider’s storage service or databases. It’s best to keep this data at rest encrypted. Alternatively, data can be passed from one function to another and even between different executions of the same function, by storing it in an appropriate folder in the container. This is one of the advantages of “warm” containers.

Data can still be compromised in transit if an attacker is able to leverage a vulnerability in the function’s code, exploit the cloud provider’s virtualization technology or gain access to the account. A third party API service or a malicious third party library might also be the reason for a data leakage.

### Application Vulnerabilities

In serverless, application vulnerabilities are even more relevant than before. As the application now consists of mostly code and configurations, attackers will naturally focus on exploiting these layers.

Other possible attack scenarios aside from exploiting application vulnerabilities include a compromised developer machine or MiTM attacks, which may result in adding a backdoor function or in hijacking existing functions in the account.

Once a function has been compromised, an attacker will typically try to identify the access available to him by brute-forcing the cloud provider’s APIs. An attacker will attempt to use the permissions to either gain persistency, execute lateral movement or exfiltrate data from the account.

Additionally, source code repositories such as Github and Bitbucket are well-known targets for crawlers seeking access keys. An attacker could potentially gain access to these publicly available keys and then tamper with your account.

### Access Management

As is always the case, access management is a crucial part of maintaining a secured application. Dividing the cloud provider’s account users into groups, such as developers and administrators allows you to easily control the multiple users in the account and their allowed activity.
Carefully examine granting permissions that allow creation, modification or removal of the resources that belong to your application.

### Access Segmentation

What also happens in serverless is a unique opportunity for the creation of well defined segmentation in an application. This is due to the fact that the application is divided into granular functions and each function’s behavior can be controlled using the appropriate permissions.

In AWS for example, the entity that is responsible for the function’s permissions is an IAM role. An IAM role grants permissions to attached trusted entities. Such entities might be AWS services, AWS accounts or AWS users. Each Lambda function has an IAM role which grants permissions to this specific function and is trusted by the Lambda service entity. A Lambda function in AWS is allowed to do only what the IAM role permits. It’s a highly recommended best practice to keep the role and it’s permissions least privileged.

Another best practice is to only allow the build system to create or update resources in your production account. This limits the possibility of having unfamiliar resources in the account and the ability of an attacker to gain significant access to the system.

***
**Credits:** Zohar Einy (@ZoharEiny), Avi Shulman (@avi-puresec)
***
