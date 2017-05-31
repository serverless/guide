## Development

Developing an application usually starts with an idea, which transforms into a code spike. A short sprint that manifests the core idea into code. Most developers want to share the idea, deploy the code as soon as they can. The excitement is usually curbed by the decisions that follow. The decisions around provisioning infrastructure, scalability, costs... That is usually a big chasm to cross.

The serverless computing paradigm is set to close that gap. It allows developers to think beyond infrastructure and keep their focus code-centric. It provides an architectural pattern, that allows writing code with functions being the unit of deployment. It allows the polygots in our midst, to have a choice to mix and match the code in different languages based on the needs of the application. With serverless, the code in a function can be written in any programming language that the serverless compute provider supports. 

The serverless architecture enables building applications one function at a time. The individual functions cater to a single responsibility. Functions related to each other by a common functional domain can be grouped together as a service. Albeit, the grouping, each function is still remains the unit of deployment.  

The serverless style of computing is opening up the gates to a distributed, event-driven, collaborative ecosystem of functions and services. Serverless applications will interact with various event sinks and consume events from publishers. Developers will have access to a palette of services that they can discover, and integrate into their applications in real-time. Services made up of functions, possibly written in different programming languages, possibly running on different compute providers. All done in a transparent, seamless, cohesive manner.

The developer will not have to worry about the computing environment that the function will be run on. On function invocation, the serverless compute service will automatically provision compute containers, with the appropriate language runtime environment required by the function to execute. After the functions are executed, the computing environment will be torn down. 

You only pay for the compute time and resources that were used when your function(s) actually ran. *No paying for idle time.* As the load on your functions in your application change, the computing environment is auto-scaled to handle the load. Infrastructure is managed automatically, behind the scenes, based on the needs of your application code. The focus is changed from being infrastructure-centric to being code-centric.

The possibilities are endless, and we are on the threshold of unleashing the power of the serverless movement.


* [Culture](./culture.md)
* [Pathway to Serverless Development](./pathway_to_sls.md)
* [Project Structure](./project_structure.md)
* [Deployment](./deployment.md)
* [Testing](./testing.md)
* [Debugging](./dev/debugging.md)
* [Examples](./examples.md)