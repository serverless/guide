<!--
title: Providers - Azure Functions
menuText: Azure Functions
menuOrder: 21
description: Details about Azure Functions serverless platform.
layout: Doc
-->

## Microsoft Azure Functions

Azure Functions is Microsoft's serverless compute offering, announced in spring of 2016.

> Process events with a serverless code architecture. An event-based serverless compute experience to accelerate your development. Scale based on demand and pay only for the resources you consume.

The platform includes the following products and services:

* Functions - serverless compute
* LogicApps - orchestrated workflows visual designer
* Flow - higher abstraction on top of LogicApps
* WebJobs - run scripts or programs as background processes

### How It Works

[insert diagram to showcase usage]

### Language Support

Supports C#, F#, Node.js, Python, PHP, batch, bash, or any executable.

### Security

Protect HTTP-triggered functions with OAuth providers such as Azure Active Directory, Facebook, Google, Twitter, and Microsoft Account.

### Tooling

[Azure Portal](https://portal.azure.com/), [Azure Powershell](https://docs.microsoft.com/en-us/powershell/azure/overview), [Azure CLI](https://azure.github.io/projects/clis/), and [Azure SDK](https://azure.microsoft.com/downloads/)

Supports coding functions directly in the portal, or through Visual Studio Team Services or others IDEs like Xcode, Eclipse, and IntelliJ IDEA. Visual Studio supports all three deployment processes (FTP, Git, and Web Deploy), while other IDEs can deploy to App Service if they have FTP or Git integration. See [deployment processes overview](https://docs.microsoft.com/en-us/azure/app-service-web/web-sites-deploy#overview) for details.

### Monitoring, Logging & Alerting

Functions integrates with [Azure Application Insights](https://docs.microsoft.com/en-us/azure/application-insights/app-insights-overview), the Azure APM service. It includes metrics, traces, exception tracking, dependencies and user data. Despite the serverless abstraction, App Insights lets users see server-level metrics down into individual VMs such as the CPU usage. See [monitoring overview](https://docs.microsoft.com/en-us/azure/app-service-web/web-sites-monitor) for details.

[Application Insights Analytics](https://docs.microsoft.com/en-us/azure/application-insights/app-insights-analytics) gives detailed information about diagnostic data for an application.

[Azure Audit Logs](https://azure.microsoft.com/en-us/documentation/articles/insights-debugging-with-events/) is a data source that provides a wealth of information on the operations on your Azure resources. The most important data within Azure Audit Logs is the operational logs from all your resources.

Alerts are available across different services, including, Application Insights, Log Analytics, and Azure Monitor.

### Debugging & Diagnostics

The [Azure Functions CLI](https://www.npmjs.com/package/azure-functions-cli) provides local debugging support. But, since Azure Functions is built on top of [Azure App Service](https://azure.microsoft.com/en-us/services/app-service/), remote debugging support is built-in.

With the help of a few tools and components like Visual Studio, [Visual Studio Tools for Azure Functions](https://blogs.msdn.microsoft.com/webdev/2016/12/01/visual-studio-tools-for-azure-functions/) and [Cloud Explorer extension](https://marketplace.visualstudio.com/items?itemName=MicrosoftCloudExplorer.CloudExplorerforVisualStudio2015), it is possible to set breakpoints and step through code via the debugger. 
**Note**: Although these tooling experience is currently in preview.


### Pricing

See [Azure Functions pricing page](https://azure.microsoft.com/en-us/pricing/details/functions/) for details.

### Limitations

The limitations are not really documented but gathering from user experiences, it seems Azure Functions allow only **10** concurrent executions per function. There is also **no** limitations on max. execution time limit, but you will be billed for any accidental loops.

### Resources

* [Azure Functions](https://azure.microsoft.com/en-us/services/functions/)
* [Azure Functions Source](https://github.com/Azure/Azure-Functions/)
* [Azure Functions Documentation](https://docs.microsoft.com/en-us/azure/azure-functions/)

***
**Credits:** Rupak Ganguly (@rupakg)
***