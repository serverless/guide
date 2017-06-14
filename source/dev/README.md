<!--
title: Development
menuText: Development
menuOrder: 8
description: An overview of development trends, changing mindsets, using serverless technologies.
layout: Doc
-->

# Development

Bringing a product to life usually starts with an idea, which transforms into a code spike. A short sprint that manifests the core idea into code. Most developers want to share the idea and deploy the code as soon as they can. The excitement is usually curbed by the decisions that follow. The decisions around infrastructure, scalability, costs... That is usually a big chasm to cross.

## Reimagined Ops

> Longer the time from ideation to the users using the product, more chances of the idea dying on the vine. 

Today, the DevOps teams spend a lot of time managing the pre-deployment phase of a product life-cycle. Most of the mundane work is standing up infrastructure and then managing the resources around it. PaaS systems and teams adhering to Infrastructure as Code, find it a little easier to manage the infrastructure, but it is still never ending. Managing hardware resource metrics, uptime of infrastructure, upgrades, and patches, takes up all the time. No time for collecting and analyzing the product usage data.

Over-allocation of hardware resources or auto-scaling tactics are used for future proofing product loads. The focus is on the scalability of core infrastructure or maintaining cost thresholds.  

There is huge complexity involved in maintaining highly scalable, fault-tolerant, self-healing, performant systems. It requires highly trained teams with deep systems knowledge, course correcting at all times. Mundane and busy work. No time for enhancing core business value.

That is just the production side of things. Multiply all that pain at least three times - for development, QA and staging environments. 

On the product development side of the house, developers are burdened by technical debt managing monolith applications. Larger build-test-deploy cycles take up time and focus away from incorporating user feedback. RAD is non-existent. POCs take too much time to showcase. Packaging and release processes are too cumbersome. No time to listen to the users who matter the most.

Product development is walled inside the confines of the infrastructure fortress. The developers chained to the boundaries established for them.
 

## Numbers Don't Lie

- Serverless saves roughly 40%-60% of typical infrastructure development time

> With AWS Lambda, we eliminate the need to worry about operations. We just write code, deploy it, and it scales infinitely; no one really has to deal with infrastructure management. The size of our team is half of what is normally needed to build and operate a site of this scale. - *Tyler Love, CTO at Bustle*

- 100%+ MoM growth in the serverless workloads
- 20x increase in search popularity for serverless

> By using AWS Lambda, we’ve cut our CRISPR off-target search times by 90% and scaled to hundreds of genomes. With faster searches, scientists using our platform can spend more time focusing on their research. - *Vineet Gopal, Engineering Manager at Benchling*

- Zero to minimal cost, with AWS Lambda including 1 million **free** requests and up to 3.2 million seconds of compute time per month

> The operational cost estimates are roughly $1700/month to service approximately 40 million page requests, with the vast majority of that going towards CloudFront data transfer costs. At scale, Trek10 estimates the Lambda and DynamoDB costs to be less than $200/month! - *Trek10 case study*


## Look Maa... No Servers

NoOps is not practical. LessOps is where we are headed. Less ops, more dev. More code equals more innovation. Less servers, means less ops, which in turn means significant cost savings.

No more multiple physical environments to manage, to support different stages of product releases. Serverless enables simple configuration and tagging of functions, to realize complex combinations of function execution. Different versions of same functions can be targeted to run on different staging environments. This allows for parallel experimentation without stepping on production release cycles.

Serverless computing has all the tenets to realize that promise. Code execution in small bite sized functions is the driver. No touch provisioning of infrastructure and auto-scaling on a need-basis liberates the developer from operational complexity. A new generation of event-driven services and applications, 

Zero administration of infrastructure and no responsibility towards auto-scaling, clustering or load-balancing applications will help evolve the DevOps team. A different kind of DevOps. The goals for the future DevOps teams will align on delivering immediate business value. Keeping a finger on the pulse of the core business through monitoring user activity & product usage will be the key. Developing tools and services for logging, detecting errors, distributed tracing will be the focus.

## Zero to Sixty...

An approach to application development incorporating microservices architecture and FaaS, coupled with serverless computing, is the new wave.

Functions being unit of deployment, with minimal packaging, makes rapid prototyping and agile feature release cycles possible. Quicker implementation and shorter user feedback loops. 

Functions being the smallest computational unit allows for pay-per-execution and micro-billing. Instead of auto-scaling VMs, small tweaks in function run times exponentially decreases the overall cost of ownership. Small knobs, big gains, at the developer level. 

## Room to Grow

Serverless computing is at its early stages and comes with its own challenges. By nature, since the infrastructure is not managed directly, applications that need server optimizations, counter that with tweaking RAM and CPU usage. A new problem that has emerged with serverless, is long cold start times. It has been resolved by clever techniques such as scheduled health checks to keep functions warm. The serverless tooling landscape is still immature but several frameworks have emerged to help with that. Application with very low-latency requirements may suffer performance. Serverless architecture being completely stateless presents challenges in caching, connection pooling and data storage in general. Because of the distributed and event-driven nature of the serverless system, support for debugging, troubleshooting, distributed tracing, and monitoring across functions and services needs to improve.

## The Future is Promising...  

The serverless style of computing is opening up the gates to a distributed, event-driven, collaborative ecosystem of functions and services. Serverless applications will interact with various event sinks and consume events from publishers. Developers will have access to a palette of services that they can discover, and integrate into their applications in real-time. Services made up of functions, possibly written in different programming languages, possibly running on multiple compute providers. All done in a transparent, seamless, cohesive manner.

The possibilities are endless, and we are on the threshold of unleashing the power of serverless computing.

***
**Credits:** Rupak Ganguly (@rupakg)
***