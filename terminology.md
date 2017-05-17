# Serverless Terminology

## Serverless Platform
- The platform supports administration, permission and user management associated with the development of [Serverless Services](#serverless-service).


## User Account
- A user account represents a single user in the [Serverless Platform](#serverless-platform).
- A user account stores sensitive identifying information such as email, password, username, etc
- A user account is considered the private representation of a user.


## User Profile
- A user profile represents the public presentation of a user in the [Serverless Platform](#serverless-platform).
- A user profile stores information that id displayed publicly about a user such as name, bio, github username, etc


## Serverless Service
- A Serverless Service consists of source code, a description, and service configuration.
- A service configuration is defined by a single `serverless.yml`


## Serverless Framework
- Drives the development/deployment lifecycle of a [Serverless Service](#serverless-service)
- Used to install [Serverless Functions](#serverless-function) and [Serverless Plugins](#serverless-plugin)
- Makes use of Plugins to extend the functionality of the framework.


## Serverless Plugin
- A Plugin is where the business logic lives for the functionality of the [Serverless Framework](#serverless-framework).


## Serverless Registry
- A service for registering and retrieving code packages for use in the [Serverless Framework](#serverless-framework).
- Registry is primarily used by framework for building [Serverless Services](#serverless-service).


## Serverless FDK
- Provides a simple middleware abstraction
- Enables runtime interaction with [Serverless Services](#serverless-service)
  + Executing functions
  + Dispatching events


## Serverless Gateway
- Every [Serverless Service](#serverless-service) automatically has a Serverless Gateway provisioned on deployment.
- The Gateway enables execution of the [Serverless Functions](#serverless-function) and handles propagation of [Serverless Events](#serverless-event).


## Serverless Discovery
- A service for registering and retrieving information on how to dispatch requests to [Serverless Services](#serverless-service).
- Discovery is primarily used by the [Serverless FDK](#serverless-fdk) for retrieving info on how to make calls and emit events to [Serverless Services](#serverless-service) within code.
- A [Serverless Service](#serverless-service) is automatically registered with Discovery when it is registered with the [Serverless Platform](#serverless-platform).

## Serverless Function
- Serverless Functions represent a basic unit of executable code.

### *Unprovisioned Serverless Functions*
- A zip file of a Serverless Function which you can download from the [Serverless Registry](#serverless-registry) and provision on your own infrastructure (e.g., AWS account).

### *Provisioned Serverless Functions*
- A [Serverless Function](#serverless-function) that is provisioned on someone's infrastructure and able to be invoked by someone else.
- All previous versions are expected to be kept available (which is possible w/ FaaS since all versions can be kept on a provider, awaiting an invocation for no additional cost/maintenance).

## Serverless Events
- Events are a unit of data that are sent between services