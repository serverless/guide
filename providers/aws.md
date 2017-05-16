## AWS Lambda

AWS Lambda is Amazon's serverless compute service offering, announced in 2015. 

> AWS Lambda lets you run code without provisioning or managing servers. You pay only for the compute time you consume - there is no charge when your code is not running. With Lambda, you can run code for virtually any type of application or backend service - all with zero administration. Just upload your code and Lambda takes care of everything required to run and scale your code with high availability. You can set up your code to automatically trigger from other AWS services or call it directly from any web or mobile app.

The platform includes the following products and services:

* Lambda Functions - serverless compute
* Step Functions - state management
* API Gateway - API proxy
* IAM/VPC - security
* DynamoDB - NoSql database
* S3 - storage
* CloudFront - edge locations
* Kinesis - data streaming
* SNS/SQS - messaging and queuing
* CloudWatch - monitoring and logging
* X-Ray - diagnostics

### How It Works

[insert diagram to showcase usage]

### Language Support

Supports Java, Node.js, C#, and Python code.

### Security

Secure access to other AWS services via built-in AWS SDK and integration with AWS IAM. The code is run within a VPC by default, so the code is isolated. Support for custom VPC, security groups and network access control lists as well.

### Tooling

AWS has a variety of developer tools that enable developers to securely store and version control application source code, automatically build, test and deploy their applications. 

* [AWS CodePipeline](https://aws.amazon.com/codepipeline/)
* [AWS CodeBuild](https://aws.amazon.com/codebuild/)


See [AWS Developer Tools](https://aws.amazon.com/products/developer-tools/) for details.

### Monitoring, Logging & Alerting

Automatic monitoring of Lambda functions with metrics pushed to [AWS CloudWatch](https://aws.amazon.com/cloudwatch/). The [Lambda metrics](http://docs.aws.amazon.com/lambda/latest/dg/monitoring-functions-metrics.html) include number of requests, the latency per request, requests with errors, request and error rates.

Code can be instrumented with logging statements, and the logs are automatically pushed to [CloudWatch Logs](http://docs.aws.amazon.com/AmazonCloudWatch/latest/logs/WhatIsCloudWatchLogs.html). 

All the data about metrics and logs can be viewed from the CloudWatch console.

CloudWatch also provides alerting capabilities to create alarms and receive notifications of API activity that are captured by [CloudTrail](http://docs.aws.amazon.com/awscloudtrail/latest/userguide/cloudtrail-user-guide.html).


### Debugging & Diagnostics

[AWS X-Ray](https://aws.amazon.com/xray/), helps identify, analyze and debug issues in production for applications built with microservices architecture. It helps in finding root cause and troubleshooting issues.

### Pricing

See [AWS Lambda pricing page](https://aws.amazon.com/lambda/pricing/) for details.

### Limitations

[AWS Lambda limits](http://docs.aws.amazon.com/lambda/latest/dg/limits.html) are very clearly documented. 

### Resources

* [AWS Lambda](https://aws.amazon.com/lambda/)
* [Getting Started Guide](http://docs.aws.amazon.com/lambda/latest/dg/getting-started.html)
* [AWS Lambda Documentation](https://aws.amazon.com/documentation/lambda/)