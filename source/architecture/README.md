<!--
title: Architecture
menuText: Architecture
menuOrder: 6
description: A section about serverless architectures, patterns and solutions.
layout: Doc
publish: true
-->

## Architecture

### A Look Back

Over years of building software, distinct architectural patterns have emerged. As newer technologies get introduced, we move to keep pace. Here, we compare and contrast some of the characteristics and benefits of each iteration.

#### The Monolithic Architecture

Applications based on [monolithic](https://en.wikipedia.org/wiki/Monolithic_application) architectures were developed and deployed as one large unit on shared infrastructure. The code might have been split up into components in the development phase, but they were tightly-coupled, meaning deployments are all-or-nothing. Versioning of releases was done at the application level. When problems arose in one area of the application, the whole application needed to be rolled back. Deploying new functionality required long planning and tedious approval processes across different teams. Deployments followed longer release cycles.

#### The Service Oriented Architecture (SOA)

With the advent of Web Services, applications based on [SOA](https://en.wikipedia.org/wiki/Service-oriented_architecture) became popular and gradually replaced monolithic architectures. In practical use, the ubiquitous Web services standards enhanced the mainstream appeal of SOA design. With beginnings in [client-server](https://en.wikipedia.org/wiki/Client%E2%80%93server_model) or n-tier architecture, the 3-tier architecture became most popular, with distinct separation of concerns via presentation, business logic, and data tiers. 

The presentation tier encapsulated the UI or the front-end, the business logic was kept decoupled in the logic tier, and the data sources abstracted behind the data tier. With each layer decoupled from the other and remotely accessible via Web Service APIs, they could be deployed and scaled independently of each other. This also encouraged reuse of the business logic and data tiers across different presentation views, i.e. a web site and a mobile front-end.

Smaller groups with specialized skill sets formed teams that were aligned to the tier they owned. Decisions regarding infrastructure, planning, and approval were scoped to fewer individuals. Releases for each tier could be versioned and deployed independently. In the case of failure, rollbacks were limited to the tier in question. Deployments of new functionality were quicker, less risky and each tier could follow its own release cycle.

#### The Microservices Architecture

The last couple of years has seen the advent of [microservices architecture](https://en.wikipedia.org/wiki/Microservices), which still preserves many tenets of SOA. In essence, a lot of time and effort was being wasted in managing servers and subsequent scaling of applications; microservices architecture allows teams to break an application into fine-grained, smaller services. They can communicate using a lightweight protocol. Microservices mean teams can develop, test, deploy and scale each service independently. As we saw with SOA before, even smaller, more autonomous teams tend to emerge. 

### The Serverless Architecture

The notion of being serverless took off with [AWS launching Lambda](https://techcrunch.com/2014/11/13/amazon-launches-lambda-an-event-driven-compute-service/) in late 2014. The idea of keeping the benefits and principles of microservices architecture, yet not having to manage underlying infrastructure and letting the provider auto-scale your application in response to load, was too good to ignore. The focus of application development changed from being infrastructure-centric to being code-centric.

Serverless architectures are really opinionated microservices architectures. It's a combination of [FaaS](https://en.wikipedia.org/wiki/Function_as_a_Service) (Functions-as-a-Service) for compute and [MBaaS](https://en.wikipedia.org/wiki/Mobile_backend_as_a_service) (Mobile Backend-as-a-Service) for everything else like authentication, databases, search, cache, CDN etc. 

Serverless architectures have radically changed how applications are being built and deployed at scale. It has changed how teams interact with each other with increased autonomy and higher productivity. The further decomposition of microservices into functions has led to decoupling at an even finer-grained level. With the flexibility to map functions to events bubbling from disparate sources, event-driven architecture on serverless platforms has been revolutionizing.

Taking advantage of the event-driven nature of serverless applications, many use cases became relevant. Widely popular use cases being data processing, SPAs, Mobile and IoT applications, chat bots, event workflows to name a few.


***
**Credits:** Rupak Ganguly (@rupakg)
***
