<!--
title: Providers - Azure Functions
menuText: Azure Functions
menuOrder: 19
description: Details about Azure Functions serverless platform.
layout: Doc
-->

## Providers

The serverless technology has raised a lot of eyebrows in the community in the last few years and the few big players have stepped up to release their own serverless compute infrastructure platforms. 

The Serverless Framework recognizes the concern involving provider lock-in and complexity to adopt these platforms. So under the hood, the Serverless Framework lets the user pick an infrastructure provider, and develop & deploy applications to it.

We will take a look at some popular AWS Lambda, Microsoft Azure Functions, IBM OpenWhisk, Google Cloud Functions, Webtask.io and Iron.io platforms in more detail. 

### A Comparative Look


|      Providers | AWS Lambda       | Azure Functions    | Google CloudFunctions | IBM OpenWhisk    |
|----------------|------------------|--------------------|-----------------------|------------------|
| Features       |                  |                    |                       |                  |
|                |                  |                    |                       |                  |
|                |                  |                    |                       |                  |
|                |                  |                    |                       |                  |


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

#### IBM OpenWhisk

OpenWhisk is IBM's serverless copute offering, with experimental service announced in early 2016.

> OpenWhisk is an event-driven compute platform that executes application logic in response to events or through direct invocations–from web/mobile apps or other endpoints. The OpenWhisk serverless architecture accelerates development as a set of small, distinct, and independent actions. By abstracting away infrastructure, OpenWhisk frees members of small teams to rapidly work on different pieces of code simultaneously, keeping the overall focus on creating user experiences customers want.

[More details](./openwhisk.md)...

***
**Credits:** Rupak Ganguly (@rupakg)
***
