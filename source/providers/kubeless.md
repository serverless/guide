<!--
title: Providers - Kubeless
menuText: Kubeless
menuOrder: 23
description: Details about Kubeless serverless platform.
layout: Doc
-->

## Kubeless

Kubeless is an open source effort. Mostly maintained by engineers at Bitnami, it was first showcased at the Kubernetes community meeting in [December 2016](https://www.youtube.com/watch?v=gRVuFupq1Y4&list=PL69nYSiGNLP1pkHsbPjzAewvMgGUpkCnJ&index=34).

> Kubeless is a Kubernetes native serverless solution. It let's your go from source to deployment extremely quickly without having to care about the infrastructure plumbing underneath and without having to build containers. It extends the Kubernetes API to provide an AWS Lambda clone on-prem using Kubernetes primitives. Kubeless offers HTTP and event based triggers and supports Python, Node.js and Ruby functions. 

[Kubeless](http://kubeless.io) uses Prometheus for monitoring and fluentd for logging. A default event-based broker can be used to publish events that trigger functions. The CLI mimics the Google Cloud Functions and AWS Lambda CLI.

### How It Works

Kubeless is a Kubernetes API server extension which defines a _function_ primitive in a Kubernetes cluster. When you deploy a kubeless function, a _controller_ injects the function source code into a Kubernetes pod. For HTTP triggers, the functions are exposed via Kubernetes services and if the user decides they can also be exposed via an ingress resource (which provides an API gateway). Functions can also be triggered by events in a Kafka broker topic.

All language runtimes are instrumented for metrics collection which allows kubeless to leverage the Kubernetes horizontal pod autoscaler (HPA) primitives.

[insert diagram to showcase usage]

### Language Support

Supports Node.js, Python and Ruby.

### Security

Kubeless is a Kubernetes API extension. To deploy functions, users need to have access to a Kubernetes cluster and have enough privileges in a given Kubernetes namespace. Kubernetes [RBAC](https://kubernetes.io/docs/admin/authorization/rbac/) is the main security mechanism. Functions can be exposed to the public internet using Kubernetes ingress rules which can be secured via TLS.

### Tooling

Most of the kubeless tooling is developed in the [kubeless](https://github.com/kubeless) GitHub organization, except the serverless plugin which is hosted upstream in the [serverless](https://github.com/serverless) GitHub organization.

* The [Kubeless UI](https://github.com/kubeless/kubeless-ui) can be run locally or in-cluster.
* The [Kubeless CLI](https://github.com/kubeless/kubeless) is available on the release page.
* The [Serverless plugin](https://github.com/serverless/serverless-kubeless) developed upstream.

### Monitoring, Logging & Alerting

Kubeless monitoring relies on [Prometheus](https://prometheus.io/). The language runtimes are instrumented to automatically collect metrics for each function. Prometheus will scrape those metrics and display them in the default Prometheus dashboard or a Grafana dashboard.

Logging is available through [fluentd](https://docs.fluentd.org/v0.12/articles/kubernetes-fluentd). It stores logs in [elastic](https://www.elastic.co/) and displays them through Kibana.

Alerting is configurable using the [Prometheus Alert Manager](https://prometheus.io/docs/alerting/alertmanager/).

### Debugging & Diagnostics

Standard Kubernetes debugging and troubleshooting mechanisms.

### Pricing

Kubeless is open-source and free, there is no commercial version.

### Limitations

[Memory limits](https://kubernetes.io/docs/tasks/administer-cluster/memory-default-namespace/) can be set via the CLI or the serverless plugin function definition. 

### Resources

* [Kubeless](http://kubeless.io) web site
* [Kubeless](https://github.com/kubeless) GitHub organization

***
**Credits:** Nguyen Anh-Tu (ng.tuna@gmail.com)
***