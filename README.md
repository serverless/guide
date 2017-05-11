# Serverless Guide

The open-source definitive guide on serverless architectures.

## Contents

* [Introduction](./introduction.md)
    * The Evolution
      * How did we get here?
      * Bare metal, VMs/IaaS, Containers, PaaS, Serverless
    * What Is Serverless?
    * Misconceptions around Serverless
    * Serverless In The Cloud Computing Paradigm
    * Serverless vs. PaaS
    * Characteristics
      * Execute Code On Demand
      * Zero-Administration
      * Microservices
      * Event-Driven
      * Pay-Per-Execution
      * Stateless
      * Cloud Based
      * Third Party Services
      * Thicker Clients
    * Driving Factors/Benefits
      * Lowest Total Cost of Ownership
      * Focus on Business Problems
      * Build More, Faster
      * No Underutilization
      * Agility
      * Team Autonomy 
    * The Serverless Framework
      * Getting Started (link to docs)
    * The Serverless Platform
      * Vision
      * Event-driven everything
      
* [Architecture](./architecture.md)
    * A look at established architectural patterns
        * n-Tier Architecture
        * SOA
        * Microservices Architecture
    * Why do we need a new architectural pattern?
        * Need for agile development lifecycles
        * Need for independent teams working in parallel
        * Focus on building than managing infrastructure
        * Cooperative Development (sharing functions) 
    * Event-driven Architecture
    * Partitioning Logic
        * Nanoservices
        * Microservices
        * Monolithic
        * GraphQL

* [Adoption](./adoption.md)
    * Is it for me?
    * It is just a hype, so I will wait (Enterprises)
    * What is Gartner saying?
    * Who are big players that see the value?

* [Security](./security.md)
    * How is security different in serverless world? What is my surface area?
    * How is data shared? 
    * How do integrations work?
    * Access Management
      * How should I handle IAM roles?
      * Role based access
      * What about other provider specific roles?
      * How does it translate to the Framework? Does it make it easier to manage?

* [Use-Cases/Case Studies](./case_studies/index.md)
	*Link to case studies showing examples of serverless being used successfully (currently have 2)*
  * Backends for Web, Mobile & IoT
  * Data Processing Pipelines
  * Webhooks
  * Chatbots
  * All Event-Driven Workflows
  * Devops/Tooling Automation
  * CRON Jobs

* [Development](./dev/index.md)
    * Culture
        * How do I form teams?
        * Microservice/developer autonomy 
        * How do I train my teams?
        * How do I hire?
        * Practices 
            * [How to migrate your talent to the cloud](https://medium.com/capital-one-developers/how-to-migrate-your-talent-to-the-cloud-bdfaf33784e4#.5delrn9jk)
    * Team Workflows
    * Pathway to Serverless Development
        * Boilerplate to a functioning app [example]
        * Using a shared function [example]
        * Sharing my function across apps [example]
        * Using a 3rd party service [Auth0 example]
    * Project Structure
        * How does this fit in with git?
        * What are best practices for breaking apart services? 
        * How should I organize repos?  
    * Continous Integration/Development
    * Deployment  
        * How to I continuously deploy?
        * How do I do staging?
        * Rollbacks?    
    * Testing
        * Best practices? 
        * How do I do continuous integration? 
        * How do I unit test?
    * Examples
    *[link, description, and (tags?) for each example from the examples repo (Goal: provide concrete use cases and example code)]*
    
* [Operations](./ops/index.md)
    * Stages & Environments
    * Blue/Green Deployments
    * Performance Management
    * Distributed Tracing
    * Debugging
    * Monitoring
    * Logging/Auditing

* [Providers](./providers/index.md)
  *[For each provider highlight their product, advantages, limitations, use cases, etc.]*
    * Introduction
    * Comparison/Matrix of Features
    * List
    * AWS Lambda
        * DynamoDB
        * API Gateway
        * SAM
    * Azure Functions
        * Logic Apps
    * Google CloudFunctions
        * Firebase
    * IBM OpenWhisk
    * Webtask.io
    * Iron.io
