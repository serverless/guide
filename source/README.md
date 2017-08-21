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

Just like wireless internet has wires somewhere, serverless architectures still have servers somewhere. What makes something serverless is, that as a developer you don’t have to worry or think about those servers. You can just focus on code.

There are 4 core tenets you should know about:

1. **Zero Administration**:
This is the most exciting thing about serverless. Whereas previous abstractions like VMs and containers still shared a lot of the same configuration and administration properties of servers, serverless is a completely different experience. When you're ready to deploy code, you don't have to provision anything beforehand, or manage anything afterward. There is no concept of a fleet, an instance, or even an operating system. Everything runs in the cloud and the provider manages scaling for you.

1. **Pay-per-execution**:
This is what typically incentivizes developers to try serverless for the first time. It’s alluring to have complete resource utilization without paying a cent for idle time. This tenet alone results in over 90% cost-savings over a cloud VM and immeasurable developer satisfaction in knowing that you never have to pay for resources that you don’t use.

1. **Function as unit of deployment**:
Serverless architectures are composed of very small, independent bits of code (functions) that are loosely coupled and collaborative—also known as a microservice architecture. The main advantage? Pieces of the system are contained. They can be developed and deployed independently. The result is fewer blockers and far greater developer autonomy and productivity.

1. **Event-Driven**:
This aspect of serverless is the most under-the-radar right now, but is shaping up to be the most important in the long-term. Serverless functions are stateless, and essentially dormant, until they have an event to react to. The event is what brings them to life and provides them with the data/context to do their job. Event-driven architectures are nothing new, but the rise of serverless compute has renewed interest in them because serverless architectures are by definition event-driven.

***
**Credits:** Rupak Ganguly (@rupakg), Nick Gottlieb (@worldsoup)
***
