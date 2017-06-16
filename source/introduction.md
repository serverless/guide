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
* How did we get here?
* Bare metal, VMs/IaaS, Containers, PaaS, Serverless

### What Is Serverless?

Serverless aka Function as a Service (FaaS), is an architectural pattern that runs backend logic embedded in functions, inside compute containers, that are stateless, triggered by events and ephemeral in nature. It is a code-centric approach to application development. Each function, where the code lives is atomic and handles a single responsibility. Functions can be grouped together into services. 

Events originating inside or outside of your application/service can trigger your functions. Your functions can consume events, or trigger other events. This allows your applications to react to events in an asynchronous manner. It allows for a serverless application platform that promotes production, detection, consumption and reaction to events.

The unit of consumption and billing, is in milliseconds, and is based on the compute time and resources that were used by your functions. There is no idle compute time. *There is no paying for idle time.* Load on your functions are transparently handled at the compute provider level, and your functions are auto-scaled to meet the needs of the application. The focus is changed from being infrastructure-centric to being code-centric.
 


***
To contribute to this section of the guide, please see suggested content breakup in [Issue #31](https://github.com/serverless/guide/issues/31)
***

***
**Credits:** Rupak Ganguly (@rupakg)
***


