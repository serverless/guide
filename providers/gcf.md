## Google Cloud Functions

Cloud Functions is Google's serverless compute offering, with Beta announced in spring of 2017.

> A serverless environment to build and connect cloud services. Construct applications from bite-sized business logic billed to the nearest 100 milliseconds, only while your code is running. Serve users from zero to planet-scale, all without managing any infrastructure.

The Google serverless platform consists of the compute service called Cloud Functions. It integrates well with other Google cloud services like: 

* Cloud Storage - object storage
* Cloud Pub/Sub - real-time messaging service
* Stackdriver Logging - log management and analysis

There is a full list of [services and event providers](https://cloud.google.com/functions/docs/concepts/services, that are supported.

### How It Works

[insert diagram to showcase usage]

### Language Support

Supports only Javascript.

### Security

Google Cloud Functions provide the ability to provide access control to create and manage functions by adding users to teams and by granting them permissions using [Cloud IAM](https://cloud.google.com/iam/docs/overview) roles. Cloud Functions currently only supports primitive roles.

### Tooling


### Monitoring, Logging & Alerting

Logs emitted from Cloud Functions are automatically written to [Stackdriver Logging](https://cloud.google.com/logging/). Stackdriver Logging allows storage, search, analysis, monitoring, and alerting of log data and events from various sources.

[Stackdriver Monitoring](https://cloud.google.com/monitoring/) provides visibility into the performance, uptime, and overall health of cloud-powered applications. It collects metrics, events, and metadata from various sources, ingests that data and generates insights via dashboards, charts, and alerts. It allows setting alerts on logs events based on user-defined log based metrics.

### Debugging & Diagnostics

[Stackdriver Debugger](https://cloud.google.com/debugger/) helps debug and inspect state of an application without using logging statements. It can capture the local variables & call stack and link it back to a specific line location in the source code.

### Pricing

See [Google Cloud Functions pricing page](https://cloud.google.com/functions/pricing) for details.

### Limitations

Google Cloud Functions define quota limits in three different areas:

* Resource Limits: Defines the limits on the total amount of resources the functions can consume.
* Time Limits: Defines the limits on how long functions and builds can run.
* Rate Limits: Defines the limits on the rate at which the Cloud Functions API can be called. It also defines the limits on the rate at which resources can be used.

[Google Cloud Functions Quota limits](https://cloud.google.com/functions/quotas) are very clearly documented. But, the quota limits defined by default can be increased on request.

### Resources

* [Google Cloud Functions](https://cloud.google.com/functions/)
* [Quickstart](https://cloud.google.com/functions/docs/quickstart)
* [Google Cloud Functions Documentation](https://cloud.google.com/functions/docs/)