# The Serverless Framework

- Introduction (general overview)
  + Started by Austen Collins who wanted to use AWS Lambda but was frustrated that the tooling was so bad
  + Started out as JAWS
  + https://www.youtube.com/watch?v=D_U6luQ6I90 <-- old, re:Invent video with one of the first official Demos
  + CLI tool which helps you with the provisoning of cloud provider infrastructure components so you can solely focus on your code
  + Embrances and implements best-practices
  + Knowledge can be transfered to other Cloud providers thanks to abstractions ("learn once, use everywhere")
- What are the challenges that a dev faces, starting off with just the provider tools?
  + How to correctly setup all the infrastructure components?
  + How to automate this process so that it's not error-prone and reproduceable
    + How to incorporate this in your CI / CD process?
  + How do you work with a team on such a project
  + How do you manage so many different Cloud Provider infrastructure components w/o getting lost
- Why is there a need for the framework?
  + Automation makes devs more productive
  + It's easier to work in a large team if there's a common way to do things
  + You can focus on your code and the heavy lifting is done by the Framework
  + Best-Practices and security settings are built in
- What problems does it solve?
  + Vendor lock-in (with the help of abstractions)
  + Reproduceable builds
  + Automation
  + Coordination in large teams
  + Orchestration of large cloud infrastructures
- How did it bring the community together? (contributors, thought leadership)
  + Easy extensibility through plugins
  + Code is Open Source
  + Written in JavaScript ("easy" to pick up and contribute back)
  + Lots of issues to find areas where help is needed
  + Blog post are written with different tutorials and stuff because everything is so new (there was / is little content out there)
- Language and runtime support
  + AWS
    + Node.js
    + Python
    + C#
    + F#
    + Java
  + Azure
    + TBD
  + Google
    + Node.js
  + OpenWhisk
    + TBD
- Talk about some features that solve the biggest issues for the developer:
  + serverless.yml (mapping of service to a provider to functions to handlers to events at one place)
  + Variable system
  + Packaging (exclude dev dependencies etc.)
  + Deployment (CF for AWS, how we do for other providers?)
  + Auto-generation of IAM roles
  + Multi-provider support (vendor lock-in)
  + Login 
  + Versioning
  + Rollback
- Plugin system
  + Introduction (overview)
  + what problems does it solve? - extensibility, community involvement etc.
  + Life-cycle events (diagram of the flow)
- Example of use cases that the framework makes it easy to develop
  + Scalable marketing websites (see Coke)
  + Data processing (Nordstroms hello retail)
  + Chatbots
  + Example of David Guettas "This one's for you campaign"
- Future Plans
  + v.NEXT
  + Announcements from Emit
- Resources
  + https://github.com/serverless/plugins
  + https://github.com/serverless/examples
  + https://serverless.com/framework/docs/
  + https://github.com/JustServerless/awesome-serverless/blob/master/README.md#projects--services
  + https://github.com/JustServerless/awesome-serverless/blob/master/README.md#plugins
  + https://www.youtube.com/watch?v=BKx9vxxuZXY
