<!--
title: Providers - IBM Cloud Functions
menuText: IBM Cloud Functions 
menuOrder: 22
description: Details about IBM Cloud Functions serverless platform.
layout: Doc
-->

## IBM Cloud Functions

IBM Cloud Functions is IBM's serverless compute offering, based on Apache OpenWhisk, which launched in early 2016.

> IBM Cloud Functions is an event-driven compute platform that executes application logic in response to events or through direct invocations–from web/mobile apps or other endpoints. The IBM Cloud Functions serverless architecture accelerates development as a set of small, distinct, and independent actions. By abstracting away infrastructure, IBM Cloud Functions frees members of small teams to rapidly work on different pieces of code simultaneously, keeping the overall focus on creating user experiences customers want.

IBM's serverless platform is a managed instance of [Apache OpenWhisk](http://openwhisk.org), the open-source serverless project. It extends the open-source platform with additional tooling and integrates well with other IBM Cloud services like API Connect, Cloudant and Message Hub.

The platform includes the following products and services:

* [IBM API Gateway](https://developer.ibm.com/apiconnect/)
* [IBM Cloudant](https://www.ibm.com/analytics/us/en/technology/cloud-data-services/cloudant/)
* [IBM Message Hub](https://developer.ibm.com/messaging/message-hub/)
* [IBM Watson APIs](https://www.ibm.com/watson/developer/)

### How It Works

![IBM Cloud Functions Architecture](https://cdn.thenewstack.io/media/2017/01/fb6d2769-openwhisk_arch.png)

### Language Support

Supports Node.js, Python, Java, Swift and raw binary runtimes. Binaries compiled
for the platform can be provided in a zip file. Docker images can be specified
to customise the runtime. Docker images can be used as action source
or in conjunction with serverless function code.

### Security

IBM Cloud Functions integrates IBM Cloud's IAM service into the OpenWhisk
platform API user-based authentication scheme. Resources are shareable using the
IBM cloud account management service.

API Gateway integration for IBM Cloud Functions supports a variety of
authentication sources for controlling access to public API endpoints. Methods
being supported include API key, API secret, and OAuth validation. Supported
OAuth providers include Google, Facebook, and GitHub.

### Tooling

[IBM Cloud Functions UI](https://console.ng.bluemix.net/openwhisk/), 
[IBM Cloud Functions CLI](https://console.bluemix.net/openwhisk/learn/cli)
[openwhisk-shell](https://openwhisk.ng.bluemix.net/api/v1/web/nickm_wskng_demos/public/index.html)

### Monitoring, Logging & Alerting

The [IBM Cloud Functions Dashboard](https://ng.bluemix.net/whisk/dashboard/) provides a graphical summary of the activity and can determine the performance and health of the OpenWhisk actions. It provides Activity summary, timeline, a histogram view, and logs.

### Debugging & Diagnostics

The [wskdb: The OpenWhisk Debugger](https://github.com/apache/incubator-openwhisk-debugger), currently supports debugging OpenWhisk actions written in NodeJS, Python, and Swift. The debugger will arrange things so that the actions you wish to debug will be offloaded from the main OpenWhisk servers and instead run on your laptop. You can then, from within the debugger, inspect and modify values. For NodeJS actions, you can even modify code and publish those changes back to the OpenWhisk servers.

The [openwhisk-light](https://github.com/kpavel/openwhisk-light) project provides a "lightweight" openwhisk runtime using local Docker runtimes. This Node.js project implements the full OpenWhisk platform API. Actions are instantiated and executed using a local Docker engine. Developers can access containers running in their development environment to resolve issues.

IBM Cloud Functions is built upon the open-source serverless platform, Apache Openwhisk. Running the [full platform locally](https://github.com/apache/incubator-openwhisk#quick-start) by be achieved using a VM, Docker Compose or Kubernetes. Developers can target their `wsk` cli to point to the local endpoint for debugging production issues.

### Pricing

IBM Cloud Functions only charges for execution time (GB/s), there is no extra
charge for invocations or API gateway access. 400,000GBs per month is included
for free.

See [IBM Cloud Functions pricing page](https://console.bluemix.net/openwhisk/learn/pricing) for details.

### Limitations


### Resources

* [IBM Cloud Functions](https://console.bluemix.net/openwhisk/)
* [Apache OpenWhisk](http://openwhisk.org/)
* [Getting Started](https://console.ng.bluemix.net/docs/openwhisk/index.html#getting-started-with-openwhisk)

***
**Credits:** Rupak Ganguly (@rupakg), James Thomas (@thomasj)
***
