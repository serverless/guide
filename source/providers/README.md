<!--
title: Providers - Azure Functions
menuText: Azure Functions
menuOrder: 19
description: Details about Azure Functions serverless platform.
layout: Doc
-->

## Providers

The serverless technology has raised a lot of eyebrows in the community in the last few years and a few big players have stepped up to release their own serverless compute infrastructure platforms. 

The Serverless Framework recognizes the concerns involving provider lock-in and complexity to adopt these platforms. The Serverless Framework provides flexibility for the developer to pick an infrastructure provider of their choosing, develop and deploy applications using it.

We will take a look at some popular platforms, namely, **AWS Lambda**, **Microsoft Azure Functions**, **Google Cloud Functions**, **IBM Cloud Functions**, and **Kubeless** in more detail. 

### A Comparative Look


| *Features*/*Providers*      | AWS Lambda | Azure Functions   | Google Cloud Functions  | IBM Cloud Functions | Kubeless |
| --- | --- | --- | --- | --- | --- |
| **Language Support**        | Node.js, Java, C#, Python                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   | Node.js, C#, F#, Python, PHP                                                                                                                                                                                                           | Node.js                                                                                                                                                                                                                                                      | Node.js, Python, Java, Swift, Docker      | Node.js, Python, Ruby 
| **Security**                | [AWS IAM](https://aws.amazon.com/iam/), VPC support                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         | OAuth providers such as Azure Active Directory, Facebook, Google, Twitter, and Microsoft Account                                                                                                                                       | [Cloud IAM](https://cloud.google.com/iam/docs/overview) | [IBM Cloud IAM](https://console.bluemix.net/docs/iam/iamusermanage.html#iamusermanage), OAuth providers such as Google, Facebook, and GitHub.  | Kubernetes Role Based Access Control (RBAC) |
| **Monitoring**              | [AWS CloudWatch](https://aws.amazon.com/cloudwatch/)                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        | [Azure Application Insights](https://docs.microsoft.com/en-us/azure/application-insights/app-insights-overview)                                                                                                                        | [Stackdriver Monitoring](https://cloud.google.com/monitoring/)                                                                                                                                                                                             | [IBM Cloud Functions Dashboard](https://ng.bluemix.net/whisk/dashboard/)  | [Prometheus](https://prometheus.io/) |
| **Logging**                 | [AWS CloudWatch](https://aws.amazon.com/cloudwatch/)                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        | [Azure Application Insights Analytics](https://docs.microsoft.com/en-us/azure/application-insights/app-insights-analytics)                                                                                                             | [Stackdriver Logging](https://cloud.google.com/logging/)                                                                                                                                                                                                     | [IBM Cloud Functions Dashboard](https://ng.bluemix.net/whisk/dashboard/)  | [Fluentd](https://www.fluentd.org/) |
| **Auditing**                | [AWS CloudTrail](https://aws.amazon.com/cloudtrail/)                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        | [Azure Audit Logs](https://azure.microsoft.com/en-us/documentation/articles/insights-debugging-with-events/)                                                                                                                           | [Cloud Audit Logging](https://cloud.google.com/logging/docs/audit/)                                                                                                                                                                                         | | |
| **Alerts**                  | [AWS CloudWatch](https://aws.amazon.com/cloudwatch/) Alarms                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 | [Azure Application Insights](https://docs.microsoft.com/en-us/azure/application-insights/app-insights-overview), Log Analytics, and Azure Monitor                                                                                      | [Stackdriver Monitoring](https://cloud.google.com/monitoring/)                                                                                                                                                                                               | [IBM Cloud Functions Dashboard](https://ng.bluemix.net/whisk/dashboard/) | [Prometheus Alert Manager](https://github.com/prometheus/alertmanager) |
| **Tooling Support**         | [AWS CodePipeline](https://aws.amazon.com/codepipeline/),  [AWS CodeBuild](https://aws.amazon.com/codebuild/)                                                                                                                                                                                                                                                                                                                                                                                                                               | [Azure Portal](https://portal.azure.com/),  [Azure Powershell](https://docs.microsoft.com/en-us/powershell/azure/overview),  [Azure CLI](https://azure.github.io/projects/clis/),  [Azure SDK](https://azure.microsoft.com/downloads/) | [gcloud CLI (beta) for functions](https://cloud.google.com/sdk/gcloud/reference/beta/functions/)                                                                                                                                                             | [IBM Cloud Functions UI](https://console.ng.bluemix.net/openwhisk/), [IBM Cloud Functions CLI](https://console.bluemix.net/openwhisk/learn/cli), [OpenWhisk Shell](https://openwhisk.ng.bluemix.net/api/v1/web/nickm_wskng_demos/public/index.html)| [Kubeless UI](https://github.com/kubeless/kubeless-ui), [Kubeless CLI](https://github.com/kubeless/kubeless), [Kubeless serverless plugin](https://github.com/serverless/serverless-kubeless) |
| **Debugging Support**       | [AWS X-Ray](https://aws.amazon.com/xray/)                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   | [Azure CLI](https://azure.github.io/projects/clis/) - local debugging,  [Azure App Service](https://azure.microsoft.com/en-us/services/app-service/) - remote debugging                                                                | [Stackdriver Debugger](https://cloud.google.com/debugger/)                                                                                                                                                                                                   | [wskdb: The OpenWhisk Debugger](https://github.com/apache/incubator-openwhisk-debugger) [openwhisk-light](https://github.com/kpavel/openwhisk-light) | |
| **Pricing**                 | * $0.20/million requests with 1 million requests per month free. <br/>[More details...](https://aws.amazon.com/lambda/pricing/)                                                                                                                                                                                                                                                                                                                                                                                   | * Execution Time: $0.000016/GBs, 400,000 GBs/month are free <br/>* Total Executions: $0.20/million executions, with 1 million executions/month free <br/>[More details...](https://azure.microsoft.com/en-us/pricing/details/functions/)         | * Invocations: $0.40/million invocations with 2 million invocations free <br/>* Compute Time: $0.0000025/GB-sec with 400,00 GB-sec/month free & $0.0000100/GHz-sec with 200,000 GHz-sec/month free <br/>[More details...](https://cloud.google.com/functions/pricing) | * Execution Time: $0.000017 GB-s, 400,000 GBs/month are free <br/>* No extra charge per invocation or API gateway call<br/>[More details....](https://console.bluemix.net/openwhisk/learn/pricing) | Open-source solution to be deployed for free on any Kubernetes cluster |
| **Limits**                  | * Memory allocation range: Min. 128 MB / Max. 1536 MB (with 64 MB increments)  <br/>* Ephemeral disk capacity ("/tmp" space): 512 MB  <br/>* Number of file descriptors: 1,024  <br/>* Number of processes and threads (combined total): 1,024  <br/>* Maximum execution duration per request: 300 seconds  * Invoke request body payload size (RequestResponse): 6 MB  * Invoke request body payload size (Event): 128 K  <br/>* Invoke response body payload size (RequestResponse): 6 MB  <br/>[More details...](http://docs.aws.amazon.com/lambda/latest/dg/limits.html) | * Allow only 10 concurrent executions per function * No limitations on max. execution time limit                                                                                                                                       | Resource, Time and Rate Limits are defined under [Google Cloud Functions Quota limits](https://cloud.google.com/functions/quotas)                                                                                                                             | [IBM Cloud Functions System Limits](https://console.bluemix.net/docs/openwhisk/openwhisk_reference.html#openwhisk_syslimits)                                                                                                                               | Memory limits using Pod [limits](https://kubernetes.io/docs/tasks/administer-cluster/memory-default-namespace/) |

### The Players

Some of the popular players are:



#### AWS Lambda

AWS Lambda is Amazon's serverless compute offering, announced in 2015. 

> AWS Lambda lets you run code without provisioning or managing servers. You pay only for the compute time you consume - there is no charge when your code is not running. With Lambda, you can run code for virtually any type of application or backend service - all with zero administration. Just upload your code and Lambda takes care of everything required to run and scale your code with high availability. You can set up your code to automatically trigger from other AWS services or call it directly from any web or mobile app. 

[More details](./aws.md)...

#### Microsoft Azure Functions

Azure Functions is Microsoft's serverless compute offering, announced in spring of 2016.

> Process events with a serverless code architecture. An event-based serverless compute experience to accelerate your development. Scale based on demand and pay only for the resources you consume.

[More details](./azure.md)...

#### Google Cloud Functions

Cloud Functions is Google's serverless compute offering, with Beta announced in spring of 2017.

> A serverless environment to build and connect cloud services. Construct applications from bite-sized business logic billed to the nearest 100 milliseconds, only while your code is running. Serve users from zero to planet-scale, all without managing any infrastructure.

[More details](./gcf.md)...

#### IBM Cloud Functions

IBM Cloud Functions is IBM's serverless compute offering, based on Apache OpenWhisk, which launched in early 2016.

> IBM Cloud Functions is an event-driven compute platform that executes application logic in response to events or through direct invocations–from web/mobile apps or other endpoints. The IBM Cloud Functions serverless architecture accelerates development as a set of small, distinct, and independent actions. By abstracting away infrastructure, IBM Cloud Functions frees members of small teams to rapidly work on different pieces of code simultaneously, keeping the overall focus on creating user experiences customers want.

[More details](./ibm-cloud.md)...

#### Kubeless

Kubeless is an open source project initiated by [Bitnami](https://bitnami.com), first introduced in December 2016.

> Kubeless is a Kubernetes native serverless solution. It leverages Kubernetes API primitives to deploy functions within Kubernetes Pods and expose them via Kubernetes services. Functions can be triggered by events or via regular HTTP calls. Monitoring and scaling come from the underlying Kubernetes features.

[More details](./kubeless.md)...

***
**Credits:** Rupak Ganguly (@rupakg), James Thomas (@thomasj)
***
