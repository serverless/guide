<!--
title: Providers - IBM OpenWhisk
menuText: IBM OpenWhisk
menuOrder: 22
description: Details about IBM OpenWhisk serverless platform.
layout: Doc
-->

## IBM OpenWhisk

OpenWhisk is IBM's serverless copute offering, with experimental service announced in early 2016.

> OpenWhisk is an event-driven compute platform that executes application logic in response to events or through direct invocations–from web/mobile apps or other endpoints. The OpenWhisk serverless architecture accelerates development as a set of small, distinct, and independent actions. By abstracting away infrastructure, OpenWhisk frees members of small teams to rapidly work on different pieces of code simultaneously, keeping the overall focus on creating user experiences customers want.

The IBM serverless platform consists of the compute service called OpenWhisk. It integrates well with other IBM Bluemix services like Cloudant.

The platform includes the following products and services:

* [IBM API Gateway](https://github.com/openwhisk/openwhisk-apigateway)
* [IBM Cloudant](https://www.ibm.com/analytics/us/en/technology/cloud-data-services/cloudant/)


### How It Works

[insert diagram to showcase usage]

### Language Support

Supports Node.js, Python and Swift. It can also run custom binary code embedded in a Docker containers.

### Security

IBM’s API Gateway provides security. To stop unwanted usage of the data you supply, you can ensure that only users with the correct authentication can access your APIs. Methods being supported include API key, API secret, and OAuth validation. Supported OAuth providers include Google, Facebook, and GitHub.

### Tooling

[OpenWhisk UI](https://console.ng.bluemix.net/openwhisk/), 
[OpenWhisk CLI](https://console.bluemix.net/openwhisk/learn/cli)

### Monitoring, Logging & Alerting

The [OpenWhisk Dashboard](https://ng.bluemix.net/whisk/dashboard/) provides a graphical summary of the activity and can determine the performance and health of the OpenWhisk actions. It provides Activity summary, timeline, a histogram view, and logs.

### Debugging & Diagnostics

The [wskdb: The OpenWhisk Debugger](https://github.com/apache/incubator-openwhisk-debugger), currently supports debugging OpenWhisk actions written in NodeJS, Python, and Swift. The debugger will arrange things so that the actions you wish to debug will be offloaded from the main OpenWhisk servers and instead run on your laptop. You can then, from within the debugger, inspect and modify values. For NodeJS actions, you can even modify code and publish those changes back to the OpenWhisk servers.

### Pricing

The open-source offering is available for free. The exact prices for the final offering for IBM Bluemix are not yet available.

### Limitations



### Resources

* [IBM OpenWhisk](https://www.ibm.com/cloud-computing/bluemix/openwhisk)
* [Apache OpenWhisk](http://openwhisk.org/)
* [Getting Started](https://console.ng.bluemix.net/docs/openwhisk/index.html#getting-started-with-openwhisk)

***
**Credits:** Rupak Ganguly (@rupakg)
***