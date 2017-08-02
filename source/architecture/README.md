<!--
title: Architecture
menuText: Architecture
menuOrder: 6
description: A section about serverless architectures, patterns and solutions.
layout: Doc
publish: false
-->

## Architecture

Over years of building software, distinct architectural patterns have emerged. A look back paints a picture of how different architectures have evolved, keeping pace with newer technologies. Here we compare and contrast some of the principles, characteristics, and benefits of each.

### The Monolithic Architecture

Applications based on [monolithic](https://en.wikipedia.org/wiki/Monolithic_application) architectures are developed and deployed as one large unit on shared infrastructure. The code might be split up into components in the development phase but they were tightly-coupled making deployments all or nothing. Versioning of releases was done at the application level. In the case of problems in one area of the application, the whole application needed to be rolled back. Deployment of new functionality required long planning and tedious approval processes across different teams. Deployments followed longer release cycles.

### The Service Oriented Architecture (SOA)

With the advent of Web Services, applications based on [SOA](https://en.wikipedia.org/wiki/Service-oriented_architecture) became popular and gradually replaced monolithic architectures. In practical use, the ubiquitous Web services standards enhanced the mainstream appeal of SOA design. With beginnings in [client-server](https://en.wikipedia.org/wiki/Client%E2%80%93server_model) or n-tier architecture, the 3-tier architecture became most popular, with distinct separation of concerns via presentation, business logic, and data tiers. 

The presentation tier encapsulated the UI or the front-end, the business logic was kept decoupled in the logic tier, and the data sources abstracted behind the data tier. With each layer decoupled from the other and remotely accessible via Web Service APIs, they could be deployed and scaled independently of each other. This also encouraged reuse of the business logic and data tiers across different presentation views i.e. a web site and a mobile front-end.

Smaller groups with specialized skill sets formed teams and were aligned to the tier they owned. Decisions regarding infrastructure, planning, and approval were scoped to fewer individuals. Releases for each tier could be versioned and deployed independently. In the case of failure, rollbacks were limited to the tier in question. Deployments of new functionality were quicker, less risky and each tier could follow their own release cycles.

### The Microservices Architecture

Last couple of years has seen the advent of the [microservices architecture](https://en.wikipedia.org/wiki/Microservices) that still preserves many tenets of SOA. In essence, microservices architecture promoted decomposing an application into fine-grained, smaller services and communicating using a lightweight protocol. It enabled developing, testing, deploying and scaling each service independently, thereby promoting smaller autonomous teams to emerge. Just like SOA, the benefits came with a shared dependency on infrastructure. A lot of time and effort was being wasted in managing servers and subsequent scaling of applications.
