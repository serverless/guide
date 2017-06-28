<!--
title: Introduction
menuText: Introduction
menuOrder: 5
description: Introduction section of the guide
layout: Doc
-->

## Introduction

After a decade of cloud computing, we are at the crossroads of a paradigm shift in technology. Barring the confusion and the misconception of the term "serverless", serverless computing is the talk of the town. Serverless is being heralded as the pinnacle of cloud computing.

Serverless is a new way to approach cloud computing and AWS Lambda trailblazed the path with its serverless compute platform. It provided an event-driven, functions based, pay-per-execution, auto-scaling serverless computing platform. It is liberating the developers from constantly thinking about infrastructure and the means to manage them. It is set to bring the focus back on building and shipping products in an agile and iterative manner.

From an application development perspective, serverless computing makes functions as the unit of development. Based on event-driven architecture, it is creating an ecosystem where events will flow seamlessly across product boundaries, ushering a new era of composability and sharing. Heterogenous systems and disparate services will be talking to each other based on universal event specs, forming the basis for a large-scale, distributed system. The services and their functions could be discovered, shared and eventually run across infrastructure or provider boundaries.

Serverless computing is *not* here to replace every other computing platform out there. It is here to augment them. It will help us re-think how we build applications for tomorrow. It is a disruptive technology that will change how we code.

### The Evolution

Back in the sixties, the concept of delivering computing capabilities over a global network was being envisioned. The vision was to have everyone interconnected and access applications & data, from any site, across the globe. In the nineties, with the internet gaining more popularity, the web technologies started maturing. It created a need for hosting these websites. ISPs mushroomed the landscape and hosting providers lined up infrastructure, renting shared resources to satisfy the need. Soon enough, a larger scale and distributed hosting strategy gave rise to global data-centers. **Traditional data-centers abstracted the hosting environment with limited elasticity and resource pooling. Scaling was achieved by adding more hardware.** Consumers managed the application stack, OS, data, storage, networking and the hardware.

As cloud technologies evolved, Infrastructure-as-a-Service (IaaS) platforms like Amazon Web Services (AWS), Microsoft Azure, Google Compute Engine (GCE), Joyent, and OpenStack became prevalent. They abstracted away infrastructure components into self-service models for accessing and managing compute (VMs or bare-metal), object storage, block storage, and networking services via APIs, and billed based on consumption.
**Virtualized data-centers abstracted the underlying infrastructure. Scaling was achieved by allocating more compute (VMs) and other infrastructure resources.** Consumers managed the application stack, data, and OS, while the IaaS provider managed the virtualization, servers, hard drives, storage, and networking.

Platform-as-a-Service (PaaS), added another layer of abstraction on top of the IaaS components, by providing a unified computing platform with a self-service portal to deploy applications. PaaS software platforms like AWS Elastic Beanstalk, Windows Azure, Heroku, Force.com, Google App Engine, Pivotal CF, Apprenda, RedHat Openshift are some popular examples. **PaaS abstracted the management of infrastructure services, with scalability, high-availability, and multi-tenancy as it's core tenets.** Consumers managed the application stack and data, while the PaaS provider managed the OS, virtualization, servers, storage, and networking.

Containerization extended the virtualization solution by making it lightweight using fewer resources and faster boot times. It provided a portable runtime across OSs and a lightweight distribution & packaging mechanism for applications along with its dependencies. PaaS platforms use containers to manage and orchestrate applications. Containerization promoted the micro-services architecture pattern, by encapsulating & isolating reusable functional components as services. Container service providers like Docker Data Center, Amazon ECS, Google Cloud Platform, and Microsoft Azure are some popular examples. **Container runtime engines abstracted the OS.** Consumers manage the application stack and data, while the container service provider manages the container engine, host OS, servers, storage, and networking.

In the last few years, AWS Lambda made the serverless computing platform accessible to the masses, thus bringing another round of abstraction in play. The Functions-as-a-service (FaaS) paradigm promotes self-contained, stateless chunks of code packaged into 'functions', that can be run or triggered, in ephemeral containers. All done, without managing the underlying infrastructure or the language runtime needed by the code. The unit of deployment is functions. Microsft Azure Functions, Google Cloud Functions, IBM Openwhisk, Webtask.io, and Iron.io are few examples of serverless providers. **Serverless computing abstracted the language runtime.** Consumers manage the application code in units of functions, while the serverless cloud provider manages the execution environment and everything else under it.


### What Is Serverless?

Serverless a.k.a Function as a Service (FaaS), is an architectural pattern that runs backend logic embedded in functions, inside compute containers, that are stateless, triggered by events and ephemeral in nature. It is a code-centric approach to application development. Each function, where the code lives is atomic and handles a single responsibility. Functions can be grouped together into services. The serverless architecture promotes the use of third-party services a.k.a Backend-as-a-Service (BaaS) for authentication, data access etc.

Events originating inside or outside of your application/service can trigger your functions. Your functions can consume events, or trigger other events. This allows your applications to react to events in an asynchronous manner. It allows for a serverless application platform that promotes production, detection, consumption and reaction to events.

The unit of consumption and billing, is in milliseconds, and is based on the compute time and resources that were used by your functions. There is no idle compute time. *There is no paying for idle time.* Load on your functions are transparently handled at the compute provider level, and your functions are auto-scaled to meet the needs of the application. The focus is changed from being infrastructure-centric to being code-centric.
 


***
To contribute to this section of the guide, please see suggested content breakup in [Issue #31](https://github.com/serverless/guide/issues/31)
***

***
**Credits:** Rupak Ganguly (@rupakg)
***


