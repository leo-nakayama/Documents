User: I will ask questions about AWS services. I want to learn in a way like how you comprehend classes in OOP. For example,let's take AWS IAM as the target AWS Service for sample question data structure.   
   
 AWS IAM is ___  # this is mainly about the definition of the service.  
 AWS IAM has ___, ____, and ___ # like members of a classes  
 AWS IAM can ___, ____, and ___ # this is about the features of the service  
 AWS IAM is by default always monitored by ___ # This is about relationships with other AWS services.  
   
 The above are the question data structure using AWS IAM just as an example.  
 Now, I will give the name(s) of AWS service(s). Can you provide the response following the questioning data structure above?  Does my instruction make sense to you?

Model: Your instruction makes perfect sense\! Using AWS IAM as an example, you've structured the questions in a way that explores the definition, components, capabilities, and relationships of the service, much like understanding a class in Object-Oriented Programming (OOP). 

### The user provided the model (Amazon Nova Lite) a list of Category names followed by a list service names.

```
Category - <CATEGORY_NAME>
<SERVICE_NAME>
<SERVICE_NAME?
```

### Category - Analytics

**Amazon Athena is ___**  
- Amazon Athena is an interactive query service that makes it easy to analyze data in Amazon S3 using standard SQL.

**Amazon Athena has ___, ____, and ___**  
- Query Editor: A web-based interface for running queries.  
- Results: The output of the queries run.  
- Data Sources: The S3 buckets where the data resides.

**Amazon Athena can ___, ____, and ___**  
- Execute SQL queries on data stored in S3.  
- Integrate with other AWS services for data processing.  
- Provide query results in CSV, JSON, and other formats.

**Amazon Athena is by default always monitored by ___**  
- Amazon CloudWatch: For monitoring and logging query execution.

### Category - Application Integration

**Amazon AppFlow is ___**  
- Amazon AppFlow is a fully managed integration service that supports both SaaS applications and AWS services.

**Amazon AppFlow has ___, ____, and ___**  
- Flows: The integration tasks that define the data transfer between applications.  
- Connectors: The applications that can be integrated with AppFlow.  
- Triggers: The events that start the data transfer.

**Amazon AppFlow can ___, ____, and ___**  
- Automate data transfers between AWS services and SaaS applications.  
- Transform data during the transfer process.  
- Schedule data transfers at specified intervals.

**Amazon AppFlow is by default always monitored by ___**  
- Amazon CloudWatch: For monitoring the status and performance of flows.

### Category - Compute

**AWS App Runner is ___**  
- AWS App Runner is a fully managed service that makes it easy for developers to quickly deploy containerized applications and APIs.

**AWS App Runner has ___, ____, and ___**  
- Services: The running instances of your application.  
- Builds: The process of building your application.  
- Logs: The output and error logs from your application.

**AWS App Runner can ___, ____, and ___**  
- Automatically build and deploy containerized applications.  
- Scale applications based on demand.  
- Integrate with AWS services for CI/CD pipelines.

**AWS App Runner is by default always monitored by ___**  
- Amazon CloudWatch: For monitoring application performance and resource utilization.

### Category - Compute

**Amazon EC2 is ___**  
- Amazon EC2 (Elastic Compute Cloud) is a web service that provides resizable compute capacity in the cloud.

**Amazon EC2 has ___, ____, and ___**  
- Instances: The virtual servers where you can run applications.  
- AMIs (Amazon Machine Images): Pre-configured templates for creating instances.  
- Volumes: Persistent block storage volumes.

**Amazon EC2 can ___, ____, and ___**  
- Run applications with a wide range of operating systems.  
- Automatically scale compute capacity based on demand.  
- Integrate with other AWS services for networking, storage, and security.

**Amazon EC2 is by default always monitored by ___**  
- Amazon CloudWatch: For monitoring instance performance, resource utilization, and health.

**Amazon EC2 Auto Scaling is ___**  
- Amazon EC2 Auto Scaling automatically adjusts the number of EC2 instances in response to changes in demand.

**Amazon EC2 Auto Scaling has ___, ____, and ___**  
- Launch Configurations: The settings for your instances.  
- Auto Scaling Groups: Collections of EC2 instances that you want to manage as a group.  
- Scaling Policies: The rules for when to scale up or down.

**Amazon EC2 Auto Scaling can ___, ____, and ___**  
- Maintain a specified number of running instances.  
- Scale instances up or down based on predefined conditions.  
- Integrate with other AWS services for load balancing and monitoring.

**Amazon EC2 Auto Scaling is by default always monitored by ___**  
- Amazon CloudWatch: For monitoring scaling activities and instance health.

**EC2 Image Builder is ___**  
- EC2 Image Builder is a fully managed AWS service that makes it easier to automate the creation, management, and deployment of customized, secure, and up-to-date server images for EC2.

**EC2 Image Builder has ___, ____, and ___**  
- Pipelines: The process of creating and updating images.  
- Components: The building blocks of an image.  
- Recipes: The instructions for building an image.

**EC2 Image Builder can ___, ____, and ___**  
- Automate the creation of EC2-compatible images.  
- Ensure images are up-to-date with the latest security patches.  
- Integrate with other AWS services for deployment and management.

**EC2 Image Builder is by default always monitored by ___**  
- Amazon CloudWatch: For monitoring pipeline status and image creation.

**AWS Elastic Beanstalk is ___**  
- AWS Elastic Beanstalk is an easy-to-use service for deploying and scaling web applications and services developed with Java, .NET, PHP, Node.js, Python, Ruby, Go, and more.

**AWS Elastic Beanstalk has ___, ____, and ___**  
- Environments: The running instances of your application.  
- Applications: The code and configuration files for your application.  
- Versions: Different versions of your application code.

**AWS Elastic Beanstalk can ___, ____, and ___**  
- Automatically handle the deployment, from capacity provisioning, load balancing, and auto-scaling to application health monitoring.  
- Support for multiple platforms and languages.  
- Integrate with other AWS services for database management and monitoring.

**AWS Elastic Beanstalk is by default always monitored by ___**  
- Amazon CloudWatch: For monitoring application health, resource utilization, and performance.

**AWS Serverless Application Repository is ___**  
- AWS Serverless Application Repository is a fully managed repository that makes it easy for developers and enterprises to discover, evaluate, and deploy serverless applications.

**AWS Serverless Application Repository has ___, ____, and ___**  
- Applications: Serverless applications that can be deployed.  
- Metadata: Information about the applications, including dependencies and environment variables.  
- Versions: Different versions of the applications.

**AWS Serverless Application Repository can ___, ____, and ___**  
- Deploy serverless applications with a single click.  
- Integrate with other AWS services for deployment and management.  
- Discover and evaluate applications based on use cases and requirements.

**AWS Serverless Application Repository is by default always monitored by ___**  
- Amazon CloudWatch: For monitoring the deployment status and performance of applications.

### Category - Containers

**AWS App2Container is ___**  
- AWS App2Container is a tool that simplifies the process of migrating existing applications to containers, making it easier to modernize applications for deployment on AWS.

**AWS App2Container has ___, ____, and ___**  
- Source Code: The original code of the application.  
- Container Images: The containerized version of the application.  
- Deployment Configurations: The settings for deploying the containerized application.

**AWS App2Container can ___, ____, and ___**  
- Analyze source code to generate container images.  
- Provide recommendations for modernizing applications.  
- Integrate with other AWS services for deployment and management.

**AWS App2Container is by default always monitored by ___**  
- AWS CloudTrail: For monitoring API calls and changes made by App2Container.

**AWS Copilot is ___**  
- AWS Copilot is a command line interface (CLI) tool that helps developers build, release, and operate production-ready containerized applications on AWS.

**AWS Copilot has ___, ____, and ___**  
- CLI: The command line interface for interacting with Copilot.  
- Environments: The production and development environments for your applications.  
- Services: The AWS services that are used to deploy and manage your applications.

**AWS Copilot can ___, ____, and ___**  
- Automate the deployment of containerized applications.  
- Manage the lifecycle of applications, from development to production.  
- Integrate with other AWS services for monitoring and scaling.

**AWS Copilot is by default always monitored by ___**  
- Amazon CloudWatch: For monitoring application performance and resource utilization.

**Amazon Elastic Container Registry (Amazon ECR) is ___**  
- Amazon ECR is a fully managed Docker container registry that makes it easy for developers to store, manage, and deploy Docker container images.

**Amazon ECR has ___, ____, and ___**  
- Repositories: The containers for storing Docker images.  
- Images: The Docker images that are stored in ECR.  
- Tags: The labels used to identify images.

**Amazon ECR can ___, ____, and ___**  
- Store and retrieve Docker images.  
- Integrate with other AWS services for deployment and management.  
- Provide versioning and lifecycle policies for images.

**Amazon ECR is by default always monitored by ___**  
- Amazon CloudWatch: For monitoring image storage and retrieval.

**Amazon Elastic Container Service (Amazon ECS) is ___**  
- Amazon ECS is a highly scalable, high performance container management service that supports Docker containers and allows you to easily run applications on a managed cluster of Amazon EC2 instances.

**Amazon ECS has ___, ____, and ___**  
- Clusters: The collections of EC2 instances where your containers run.  
- Tasks: The definitions of the containers to run.  
- Services: The mechanisms for managing tasks.

**Amazon ECS can ___, ____, and ___**  
- Orchestrate and manage containerized applications.  
- Automatically scale containerized applications based on demand.  
- Integrate with other AWS services for networking and security.

**Amazon ECS is by default always monitored by ___**  
- Amazon CloudWatch: For monitoring containerized application performance and resource utilization.

**Amazon Elastic Kubernetes Service (Amazon EKS) is ___**  
- Amazon EKS is a managed service that makes it easy to run Kubernetes on AWS without needing to install and operate your own Kubernetes control plane or nodes.

**Amazon EKS has ___, ____, and ___**  
- Clusters: The Kubernetes clusters running on EKS.  
- Nodes: The EC2 instances that run the Kubernetes worker nodes.  
- Pods: The smallest deployable units in Kubernetes.

**Amazon EKS can ___, ____, and ___**  
- Deploy, manage, and scale containerized applications using Kubernetes.  
- Integrate with other AWS services for networking, storage, and security.  
- Provide a fully managed control plane.

**Amazon EKS is by default always monitored by ___**  
- Amazon CloudWatch: For monitoring Kubernetes cluster and pod performance.

**AWS Fargate is ___**  
- AWS Fargate is a serverless compute engine for containers that works with both Amazon ECS and Amazon EKS. With Fargate, you no longer have to provision or manage servers, let alone clusters.

**AWS Fargate has ___, ____, and ___**  
- Task Definitions: The definitions of the containers to run.  
- Tasks: The running instances of your containers.  
- Launch Types: The options for running tasks (Fargate or EC2).

**AWS Fargate can ___, ____, and ___**  
- Run containers without managing servers or clusters.  
- Automatically scale containerized applications based on demand.  
- Integrate with other AWS services for networking and security.

**AWS Fargate is by default always monitored by ___**  
- Amazon CloudWatch: For monitoring containerized application performance and resource utilization.

**Red Hat OpenShift Service on AWS (ROSA) is ___**  
- Red Hat OpenShift Service on AWS (ROSA) is a fully managed service that makes it easy to deploy, manage, and scale OpenShift clusters on AWS.

**ROSA has ___, ____, and ___**  
- Clusters: The OpenShift clusters running on ROSA.  
- Nodes: The EC2 instances that run the OpenShift worker nodes.  
- Applications: The containerized applications deployed on the clusters.

**ROSA can ___, ____, and ___**  
- Deploy, manage, and scale OpenShift clusters.  
- Integrate with other AWS services for networking, storage, and security.  
- Provide a fully managed control plane.

**ROSA is by default always monitored by ___**  
- Amazon CloudWatch: For monitoring OpenShift cluster and application performance.

### Category - Developer Tools

**AWS CLI is ___**  
- AWS CLI (Command Line Interface) is a unified tool to manage AWS services from the command line, allowing developers to interact with AWS services programmatically.

**AWS CLI has ___, ____, and ___**  
- Commands: The instructions for interacting with AWS services.  
- Options: The parameters for the commands.  
- Output: The results of the commands.

**AWS CLI can ___, ____, and ___**  
- Execute commands to manage AWS resources.  
- Integrate with other command line tools and scripts.  
- Automate tasks and workflows.

**AWS CLI is by default always monitored by ___**  
- AWS CloudTrail: For monitoring API calls and changes made using the CLI.

**AWS Cloud Development Kit (AWS CDK) is ___**  
- AWS CDK (Cloud Development Kit) is a software development framework to define your cloud application resources using familiar programming languages.

**AWS CDK has ___, ____, and ___**  
- Constructs: The building blocks for defining cloud resources.  
- Stacks: The collections of resources that are deployed together.  
- Templates: The infrastructure-as-code templates generated by CDK.

**AWS CDK can ___, ____, and ___**  
- Define cloud resources using code.  
- Automatically generate infrastructure-as-code templates.  
- Integrate with other AWS services for deployment and management.

**AWS CDK is by default always monitored by ___**  
- AWS CloudTrail: For monitoring API calls and changes made using CDK.

**AWS CloudShell is ___**  
- AWS CloudShell is a browser-based shell that provides a pre-authenticated, temporary environment for running commands in the AWS CLI and other tools.

**AWS CloudShell has ___, ____, and ___**  
- Shell Environment: The browser-based shell interface.  
- Pre-configured Tools: The AWS CLI and other tools that are available in the shell.  
- Storage: The temporary storage for the shell environment.

**AWS CloudShell can ___, ____, and ___**  
- Execute commands in the AWS CLI and other tools.  
- Provide a pre-authenticated environment without needing to install AWS CLI.  
- Integrate with other AWS services for resource management.

**AWS CloudShell is by default always monitored by ___**  
- AWS CloudTrail: For monitoring API calls and changes made using CloudShell.

**AWS CodeArtifact is ___**  
- AWS CodeArtifact is a fully managed artifact repository that makes it easy to store, share, and publish software packages.

**AWS CodeArtifact has ___, ____, and ___**  
- Repositories: The artifact repositories where packages are stored.  
- Packages: The software packages that are stored in the repositories.  
- Domains: The logical groups of repositories.

**AWS CodeArtifact can ___, ____, and ___**  
- Store, share, and publish software packages.  
- Integrate with other AWS services for CI/CD pipelines.  
- Provide versioning and lifecycle policies for packages.

**AWS CodeArtifact is by default always monitored by ___**  
- Amazon CloudWatch: For monitoring repository usage and package interactions.

**AWS CodeBuild is ___**  
- AWS CodeBuild is a fully managed continuous integration service that compiles source code, runs tests, and produces software packages that are ready to deploy.

**AWS CodeBuild has ___, ____, and ___**  
- Build Projects: The definitions of the build processes.  
- Builds: The running instances of the build processes.  
- Artifacts: The software packages that are produced by the builds.

**AWS CodeBuild can ___, ____, and ___**  
- Compile source code and run tests.  
- Integrate with other AWS services for CI/CD pipelines.  
- Automatically scale build environments based on demand.

**AWS CodeBuild is by default always monitored by ___**  
- Amazon CloudWatch: For monitoring build process performance and resource utilization.

**AWS CodeDeploy is ___**  
- AWS CodeDeploy is a fully managed deployment service that automates code deployments to any instance, including Amazon EC2 instances and instances running outside of AWS.

**AWS CodeDeploy has ___, ____, and ___**  
- Applications: The code and configuration files for your applications.  
- Deployment Groups: The collections of instances where your applications are deployed.  
- Deployments: The running instances of the deployment processes.

**AWS CodeDeploy can ___, ____, and ___**  
- Automate code deployments to any instance.  
- Integrate with other AWS services for CI/CD pipelines.  
- Provide rollback and update policies for deployments.

**AWS CodeDeploy is by default always monitored by ___**  
- Amazon CloudWatch: For monitoring deployment process performance and resource utilization.

**Amazon CodeGuru is ___**  
- Amazon CodeGuru is a developer tool that uses machine learning to detect potential issues in your code and provide recommendations to improve code quality and identify common software defects.

**Amazon CodeGuru has ___, ____, and ___**  
- Code Reviews: The analysis of your code for potential issues.  
- Recommendations: The suggestions for improving code quality.  
- Metrics: The measurements of code quality over time.

**Amazon CodeGuru can ___, ____, and ___**  
- Analyze code for potential issues and provide recommendations.  
- Integrate with other AWS services for CI/CD pipelines.  
- Provide historical metrics for code quality.

**Amazon CodeGuru is by default always monitored by ___**  
- Amazon CloudWatch: For monitoring code review performance and resource utilization.

**AWS CodePipeline is ___**  
- AWS CodePipeline is a fully managed continuous delivery service that helps you automate your release pipelines for fast and reliable application and infrastructure updates.

**AWS CodePipeline has ___, ____, and ___**  
- Pipelines: The definitions of the release pipelines.  
- Stages: The steps in the release pipelines.  
- Actions: The tasks that are performed in each stage.

**AWS CodePipeline can ___, ____, and ___**  
- Automate release pipelines for fast and reliable updates.  
- Integrate with other AWS services for CI/CD pipelines.  
- Provide versioning and lifecycle policies for pipelines.

**AWS CodePipeline is by default always monitored by ___**  
- Amazon CloudWatch: For monitoring pipeline performance and resource utilization.

**AWS CodeStar is ___**  
- AWS CodeStar is a fully integrated development environment in the cloud that makes it easy to set up, manage, and collaborate on cloud-based software development projects.

**AWS CodeStar has ___, ____, and ___**  
- Projects: The definitions of the development projects.  
- Connections: The integrations with other AWS services.  
- Artifacts: The source code and configuration files for the projects.

**AWS CodeStar can ___, ____, and ___**  
- Set up and manage development projects in the cloud.  
- Integrate with other AWS services for CI/CD pipelines.  
- Provide version control and collaboration tools.

**AWS CodeStar is by default always monitored by ___**  
- Amazon CloudWatch: For monitoring project performance and resource utilization.

**AWS Fault Injection Simulator (AWS FIS) is ___**  
- AWS Fault Injection Simulator (AWS FIS) is a managed service that makes it easy to safely perform fault injection experiments on AWS workloads.

**AWS FIS has ___, ____, and ___**  
- Experiments: The definitions of the fault injection experiments.  
- Targets: The AWS resources that are affected by the experiments.  
- Actions: The fault injection actions that are performed.

**AWS FIS can ___, ____, and ___**  
- Perform fault injection experiments on AWS workloads.  
- Integrate with other AWS services for monitoring and alerting.  
- Provide reports on the results of the experiments.

**AWS FIS is by default always monitored by ___**  
- Amazon CloudWatch: For monitoring experiment performance and resource utilization.

**AWS SDKs and Tools is ___**  
- AWS SDKs (Software Development Kits) and Tools provide libraries and command line tools to help developers build applications using AWS services.

**AWS SDKs and Tools has ___, ____, and ___**  
- SDKs: The libraries for interacting with AWS services.  
- CLI: The command line tools for interacting with AWS services.  
- Libraries: The additional libraries and tools for application development.

**AWS SDKs and Tools can ___, ____, and ___**  
- Interact with AWS services programmatically.  
- Integrate with other development tools and frameworks.  
- Automate tasks and workflows.

**AWS SDKs and Tools is by default always monitored by ___**  
- AWS CloudTrail: For monitoring API calls and changes made using the SDKs and Tools.

**AWS X-Ray is ___**  
- AWS X-Ray is a service that provides end-to-end tracing and debugging capabilities for applications, helping developers analyze and debug distributed applications, such as those built using a microservices architecture.

**AWS X-Ray has ___, ____, and ___**  
- Traces: The records of the requests that flow through your application.  
- Segments: The parts of a trace that represent a portion of the request.  
- Insights: The analysis of traces to identify performance issues.

**AWS X-Ray can ___, ____, and ___**  
- Provide end-to-end tracing and debugging for applications.  
- Integrate with other AWS services for monitoring and alerting.  
- Provide insights and analysis of application performance.

**AWS X-Ray is by default always monitored by ___**  
- Amazon CloudWatch: For monitoring trace data and performance metrics.

### Category - Networking and Content Delivery

**Amazon API Gateway is ___**  
- Amazon API Gateway is a fully managed service that makes it easy for developers to create, publish, maintain, monitor, and secure APIs at any scale.

**Amazon API Gateway has ___, ____, and ___**  
- APIs: The definitions of the APIs.  
- Stages: The deployment stages for the APIs.  
- Resources: The endpoints and methods of the APIs.

**Amazon API Gateway can ___, ____, and ___**  
- Create, publish, and maintain APIs.  
- Integrate with other AWS services for authentication and authorization.  
- Provide monitoring and logging for API usage.

**Amazon API Gateway is by default always monitored by ___**  
- Amazon CloudWatch: For monitoring API usage and performance.

**AWS Client VPN is ___**  
- AWS Client VPN is a managed client-based VPN service that enables you to securely access your AWS resources and resources in your on-premises network.

**AWS Client VPN has ___, ____, and ___**  
- VPN Connections: The connections that clients use to access the VPN.  
- Routes: The routing tables that define how traffic is directed.  
- Endpoints: The IP addresses that clients use to connect to the VPN.

**AWS Client VPN can ___, ____, and ___**  
- Securely access AWS resources and on-premises resources.  
- Integrate with other AWS services for authentication and authorization.  
- Provide monitoring and logging for VPN usage.

**AWS Client VPN is by default always monitored by ___**  
- AWS CloudTrail: For monitoring API calls and changes made using Client VPN.

**Amazon CloudFront is ___**  
- Amazon CloudFront is a fast content delivery network (CDN) service that securely delivers data, videos, applications, and APIs to customers globally with low latency and high transfer speeds.

**Amazon CloudFront has ___, ____, and ___**  
- Distributions: The definitions of the content delivery processes.  
- Origins: The sources of the content.  
- Cache Behaviors: The rules for caching and delivering content.

**Amazon CloudFront can ___, ____, and ___**  
- Securely deliver data, videos, applications, and APIs globally.  
- Integrate with other AWS services for content storage and management.  
- Provide monitoring and logging for content delivery.

**Amazon CloudFront is by default always monitored by ___**  
- Amazon CloudWatch: For monitoring content delivery performance and resource utilization.

**Elastic Load Balancing (ELB) is ___**  
- Elastic Load Balancing (ELB) automatically distributes incoming application traffic across multiple targets, such as Amazon EC2 instances, containers, and IP addresses, in multiple Availability Zones.

**Elastic Load Balancing (ELB) has ___, ____, and ___**  
- Load Balancers: The definitions of the load balancing processes.  
- Targets: The instances or containers that receive the traffic.  
- Listeners: The rules for how traffic is routed to targets.

**Elastic Load Balancing (ELB) can ___, ____, and ___**  
- Automatically distribute incoming application traffic.  
- Integrate with other AWS services for application scaling and management.  
- Provide monitoring and logging for load balancing performance.

**Elastic Load Balancing (ELB) is by default always monitored by ___**  
- Amazon CloudWatch: For monitoring load balancing performance and resource utilization.

**AWS PrivateLink is ___**  
- AWS PrivateLink provides private connectivity from your VPC to services powered by AWS PrivateLink in a highly-available manner, without exposing your traffic to the public internet.

**AWS PrivateLink has ___, ____, and ___**  
- Endpoints: The private IP addresses that services use to communicate.  
- Interfaces: The VPC interfaces that are used to connect to the endpoints.  
- Security Groups: The rules that control access to the endpoints.

**AWS PrivateLink can ___, ____, and ___**  
- Provide private connectivity between VPCs and services.  
- Integrate with other AWS services for network security and management.  
- Provide monitoring and logging for endpoint usage.

**AWS PrivateLink is by default always monitored by ___**  
- AWS CloudTrail: For monitoring API calls and changes made using PrivateLink.

**Amazon Route 53 is ___**  
- Amazon Route 53 is a highly available and scalable cloud Domain Name System (DNS) web service designed to route customer traffic to your applications with low latency and high availability.

**Amazon Route 53 has ___, ____, and ___**  
- Hosted Zones: The collections of domains and subdomains.  
- Records: The DNS records that define how traffic is routed.  
- Health Checks: The mechanisms for monitoring the health of resources.

**Amazon Route 53 can ___, ____, and ___**  
- Route customer traffic to your applications.  
- Integrate with other AWS services for application deployment and management.  
- Provide monitoring and logging for DNS traffic.

**Amazon Route 53 is by default always monitored by ___**  
- Amazon CloudWatch: For monitoring DNS traffic and resource health.

**AWS Site-to-Site VPN is ___**  
- AWS Site-to-Site VPN is a fully managed service that enables you to connect your on-premises network to your AWS resources using a secure IPsec VPN connection.

**AWS Site-to-Site VPN has ___, ____, and ___**  
- VPN Connections: The connections that link your on-premises network to your AWS resources.  
- Routes: The routing tables that define how traffic is directed.  
- Endpoints: The IP addresses that are used to connect to the VPN.

**AWS Site-to-Site VPN can ___, ____, and ___**  
- Connect your on-premises network to your AWS resources securely.  
- Integrate with other AWS services for network security and management.  
- Provide monitoring and logging for VPN usage.

**AWS Site-to-Site VPN is by default always monitored by ___**  
- AWS CloudTrail: For monitoring API calls and changes made using Site-to-Site VPN.

**AWS Transit Gateway is ___**  
- AWS Transit Gateway is a hub that connects your VPCs and on-premises networks to provide a common viewpoint of your network, simplify your network architecture, and centralize your network management.

**AWS Transit Gateway has ___, ____, and ___**  
- Transit Gateways: The definitions of the network hubs.  
- Attachments: The connections between the hub and VPCs or on-premises networks.  
- Routes: The routing tables that define how traffic is directed.

**AWS Transit Gateway can ___, ____, and ___**  
- Connect your VPCs and on-premises networks.  
- Integrate with other AWS services for network management and security.  
- Provide monitoring and logging for network traffic.

**AWS Transit Gateway is by default always monitored by ___**  
- Amazon CloudWatch: For monitoring network traffic and resource utilization.

**Amazon VPC is ___**  
- Amazon VPC (Virtual Private Cloud) lets you provision a logically isolated section of the AWS cloud where you can launch AWS resources in a virtual network that you've defined.

**Amazon VPC has ___, ____, and ___**  
- VPCs: The definitions of the virtual networks.  
- Subnets: The partitions within the VPCs.  
- Security Groups: The rules that control access to the resources.

**Amazon VPC can ___, ____, and ___**  
- Provision a logically isolated section of the AWS cloud.  
- Integrate with other AWS services for resource deployment and management.  
- Provide monitoring and logging for network traffic.

**Amazon VPC is by default always monitored by ___**  
- Amazon CloudWatch: For monitoring network traffic and resource utilization.

### Category - Serverless

**AWS Lambda is ___**  
- AWS Lambda is a serverless compute service that lets you run code without provisioning or managing servers, enabling you to build applications that respond to events, such as changes to cloud resources or user interactions.

**AWS Lambda has ___, ____, and ___**  
- Functions: The definitions of the code that runs in response to events.  
- Invocations: The running instances of the functions.  
- Environment Variables: The settings for the functions.

**AWS Lambda can ___, ____, and ___**  
- Run code in response to events.  
- Integrate with other AWS services for event triggering and management.  
- Provide monitoring and logging for function execution.

**AWS Lambda is by default always monitored by ___**  
- Amazon CloudWatch: For monitoring function execution performance and resource utilization.

**AWS Serverless Application Model (AWS SAM) is ___**  
- AWS Serverless Application Model (AWS SAM) is an open-source framework for building serverless applications on AWS, enabling developers to define and deploy serverless applications using a simple and declarative syntax.

**AWS SAM has ___, ____, and ___**  
- Templates: The definitions of the serverless applications.  
- Resources: The AWS resources that are used in the applications.  
- Dependencies: The relationships between the resources.

**AWS SAM can ___, ____, and ___**  
- Define and deploy serverless applications.  
- Integrate with other AWS services for application deployment and management.  
- Provide versioning and lifecycle policies for applications.

**AWS SAM is by default always monitored by ___**  
- AWS CloudTrail: For monitoring API calls and changes made using SAM.

**Amazon Simple Notification Service (Amazon SNS) is ___**  
- Amazon Simple Notification Service (Amazon SNS) is a fully managed pub/sub messaging service that enables application-to-application and application-to-person (A2P) communication.

**Amazon SNS has ___, ____, and ___**  
- Topics: The definitions of the message destinations.  
- Subscriptions: The connections between topics and subscribers.  
- Messages: The content that is sent to the topics.

**Amazon SNS can ___, ____, and ___**  
- Enable application-to-application and application-to-person communication.  
- Integrate with other AWS services for event triggering and management.  
- Provide monitoring and logging for message delivery.

**Amazon SNS is by default always monitored by ___**  
- Amazon CloudWatch: For monitoring message delivery performance and resource utilization.

**Amazon Simple Queue Service (Amazon SQS) is ___**  
- Amazon Simple Queue Service (Amazon SQS) is a fully managed message queuing service that enables you to decouple and scale microservices, distributed systems, and serverless applications.

**Amazon SQS has ___, ____, and ___**  
- Queues: The definitions of the message destinations.  
- Messages: The content that is sent to the queues.  
- Attributes: The settings for the queues.

**Amazon SQS can ___, ____, and ___**  
- Decouple and scale microservices, distributed systems, and serverless applications.  
- Integrate with other AWS services for event triggering and management.  
- Provide monitoring and logging for message delivery.

**Amazon SQS is by default always monitored by ___**  
- Amazon CloudWatch: For monitoring message delivery performance and resource utilization.

**AWS Step Functions is ___**  
- AWS Step Functions is a serverless function orchestrator that makes it easy to sequence AWS Lambda functions and multiple AWS services into serverless workflows.

**AWS Step Functions has ___, ____, and ___**  
- State Machines: The definitions of the serverless workflows.  
- States: The steps in the workflows.  
- Transitions: The rules for moving between states.

**AWS Step Functions can ___, ____, and ___**  
- Sequence AWS Lambda functions and multiple AWS services into serverless workflows.  
- Integrate with other AWS services for event triggering and management.  
- Provide monitoring and logging for workflow execution.

**AWS Step Functions is by default always monitored by ___**  
- Amazon CloudWatch: For monitoring workflow execution performance and resource utilization.

### Category - Storage

**AWS Backup is ___**  
- AWS Backup is a fully managed service that centralizes and automates the backup of data across AWS services, making it easy to meet your data protection requirements.

**AWS Backup has ___, ____, and ___**  
- Backup Plans: The definitions of the backup processes.  
- Backup Vaults: The storage locations for the backups.  
- Recovery Points: The instances of the backups.

**AWS Backup can ___, ____, and ___**  
- Centralize and automate the backup of data across AWS services.  
- Integrate with other AWS services for data protection and management.  
- Provide monitoring and logging for backup processes.

**AWS Backup is by default always monitored by ___**  
- Amazon CloudWatch: For monitoring backup performance and resource utilization.

**Amazon Elastic Block Store (Amazon EBS) is ___**  
- Amazon Elastic Block Store (Amazon EBS) provides block storage volumes for use with Amazon EC2 instances, enabling you to create, attach, and detach storage as needed.

**Amazon EBS has ___, ____, and ___**  
- Volumes: The block storage volumes that can be attached to EC2 instances.  
- Snapshots: The point-in-time backups of the volumes.  
- Types: The different types of volumes, such as SSD and HDD.

**Amazon EBS can ___, ____, and ___**  
- Create, attach, and detach storage for EC2 instances.  
- Integrate with other AWS services for instance management and backup.  
- Provide monitoring and logging for volume usage.

**Amazon EBS is by default always monitored by ___**  
- Amazon CloudWatch: For monitoring volume performance and resource utilization.

**AWS Elastic Disaster Recovery is ___**  
- AWS Elastic Disaster Recovery is a cost-effective, fully managed service for replicating and failover of on-premises and cloud-based workloads to a secondary AWS Region.

**AWS Elastic Disaster Recovery has ___, ____, and ___**  
- Source Servers: The on-premises and cloud-based workloads that are replicated.  
- Recovery Instances: The instances that are created in the secondary region.  
- Replication Servers: The instances that are used for replication.

**AWS Elastic Disaster Recovery can ___, ____, and ___**  
- Replicate and failover on-premises and cloud-based workloads.  
- Integrate with other AWS services for disaster recovery and management.  
- Provide monitoring and logging for replication processes.

**AWS Elastic Disaster Recovery is by default always monitored by ___**  
- AWS CloudTrail: For monitoring API calls and changes made using Elastic Disaster Recovery.

**Amazon Elastic File System (Amazon EFS) is ___**  
- Amazon Elastic File System (Amazon EFS) is a fully managed, scalable, and elastic network file system for use with Amazon EC2 instances, enabling you to share file data across multiple instances.

**Amazon EFS has ___, ____, and ___**  
- File Systems: The definitions of the network file systems.  
- Mount Targets: The connections between the file systems and EC2 instances.  
- Files: The data that is stored in the file systems.

**Amazon EFS can ___, ____, and ___**  
- Share file data across multiple EC2 instances.  
- Integrate with other AWS services for instance management and backup.  
- Provide monitoring and logging for file system usage.

**Amazon EFS is by default always monitored by ___**  
- Amazon CloudWatch: For monitoring file system performance and resource utilization.

**Amazon FSx for Lustre is ___**  
- Amazon FSx for Lustre is a fully managed, high-performance file system for use with Amazon EC2 instances, enabling you to process large-scale data sets.

**Amazon FSx for Lustre has ___, ____, and ___**  
- File Systems: The definitions of the high-performance file systems.  
- Mount Targets: The connections between the file systems and EC2 instances.  
- Files: The data that is stored in the file systems.

**Amazon FSx for Lustre can ___, ____, and ___**  
- Process large-scale data sets with high performance.  
- Integrate with other AWS services for instance management and backup.  
- Provide monitoring and logging for file system usage.

**Amazon FSx for Lustre is by default always monitored by ___**  
- Amazon CloudWatch: For monitoring file system performance and resource utilization.

**Amazon FSx for NetApp ONTAP is ___**  
- Amazon FSx for NetApp ONTAP is a fully managed, high-performance file system for use with Amazon EC2 instances, enabling you to store and manage large-scale data sets with enterprise-grade features.

**Amazon FSx for NetApp ONTAP has ___, ____, and ___**  
- File Systems: The definitions of the high-performance file systems.  
- Volumes: The storage locations for the file systems.  
- Snapshots: The point-in-time backups of the file systems.

**Amazon FSx for NetApp ONTAP can ___, ____, and ___**  
- Store and manage large-scale data sets with enterprise-grade features.  
- Integrate with other AWS services for instance management and backup.  
- Provide monitoring and logging for file system usage.

**Amazon FSx for NetApp ONTAP is by default always monitored by ___**  
- Amazon CloudWatch: For monitoring file system performance and resource utilization.

**Amazon FSx for OpenZFS is ___**  
- Amazon FSx for OpenZFS is a fully managed, scalable, and elastic file system for use with Amazon EC2 instances, enabling you to share file data across multiple instances.

**Amazon FSx for OpenZFS has ___, ____, and ___**  
- File Systems: The definitions of the scalable and elastic file systems.  
- Mount Targets: The connections between the file systems and EC2 instances.  
- Files: The data that is stored in the file systems.

**Amazon FSx for OpenZFS can ___, ____, and ___**  
- Share file data across multiple EC2 instances.  
- Integrate with other AWS services for instance management and backup.  
- Provide monitoring and logging for file system usage.

**Amazon FSx for OpenZFS is by default always monitored by ___**  
- Amazon CloudWatch: For monitoring file system performance and resource utilization.

**Amazon FSx for Windows File Server is ___**  
- Amazon FSx for Windows File Server is a fully managed, scalable, and elastic file system for use with Amazon EC2 instances, enabling you to share file data across multiple instances with Windows-based file sharing.

**Amazon FSx for Windows File Server has ___, ____, and ___**  
- File Systems: The definitions of the scalable and elastic file systems.  
- Mount Targets: The connections between the file systems and EC2 instances.  
- Files: The data that is stored in the file systems.

**Amazon FSx for Windows File Server can ___, ____, and ___**  
- Share file data across multiple EC2 instances with Windows-based file sharing.  
- Integrate with other AWS services for instance management and backup.  
- Provide monitoring and logging for file system usage.

**Amazon FSx for Windows File Server is by default always monitored by ___**  
- Amazon CloudWatch: For monitoring file system performance and resource utilization.

**Amazon S3 is ___**  
- Amazon S3 (Simple Storage Service) is an object storage service that offers scalability, data availability, security, and performance, enabling you to store and retrieve any amount of data from anywhere on the web.

**Amazon S3 has ___, ____, and ___**  
- Buckets: The containers for storing objects.  
- Objects: The files stored in S3.  
- Metadata: The data about the objects.

**Amazon S3 can ___, ____, and ___**  
- Store and retrieve any amount of data from anywhere on the web.  
- Integrate with other AWS services for data processing and management.  
- Provide monitoring and logging for object storage.

**Amazon S3 is by default always monitored by ___**  
- Amazon CloudWatch: For monitoring object storage performance and resource utilization.

**Amazon S3 Glacier is ___**  
- Amazon S3 Glacier is a secure, durable, and extremely low-cost cloud storage service for data archiving and long-term backup, enabling you to store and retrieve data that is infrequently accessed.

**Amazon S3 Glacier has ___, ____, and ___**  
- Vaults: The containers for storing archives.  
- Archives: The data that is stored in the vaults.  
- Retrievals: The instances of retrieving data from the vaults.

**Amazon S3 Glacier can ___, ____, and ___**  
- Store and retrieve data that is infrequently accessed.  
- Integrate with other AWS services for data archiving and management.  
- Provide monitoring and logging for archive storage.

**Amazon S3 Glacier is by default always monitored by ___**  
- Amazon CloudWatch: For monitoring archive storage performance and resource utilization.

**AWS Storage Gateway is ___**  
- AWS Storage Gateway is a hybrid cloud storage service that gives you on-premises access to virtually unlimited cloud storage, enabling you to integrate tightly with your on-premises infrastructure.

**AWS Storage Gateway has ___, ____, and ___**  
- Gateways: The definitions of the storage gateways.  
- Volumes: The storage locations that are created by the gateways.  
- Snapshots: The point-in-time backups of the volumes.

**AWS Storage Gateway can ___, ____, and ___**  
- Integrate tightly with your on-premises infrastructure.  
- Integrate with other AWS services for storage management and backup.  
- Provide monitoring and logging for gateway usage.

**AWS Storage Gateway is by default always monitored by ___**  
- AWS CloudTrail: For monitoring API calls and changes made using Storage Gateway.

### Category - Security, Identity, and Compliance

**AWS Certificate Manager (ACM) is ___**  
- AWS Certificate Manager (ACM) is a service that lets you easily provision, manage, and deploy public and private SSL/TLS certificates for use with AWS services and your internal connected resources.

**AWS ACM has ___, ____, and ___**  
- Certificates: The SSL/TLS certificates that are provisioned and managed.  
- Domains: The domains that the certificates are issued for.  
- Validation Methods: The methods used to validate the domains.

**AWS ACM can ___, ____, and ___**  
- Provision, manage, and deploy SSL/TLS certificates.  
- Integrate with other AWS services for secure communication.  
- Provide monitoring and logging for certificate usage.

**AWS ACM is by default always monitored by ___**  
- AWS CloudTrail: For monitoring API calls and changes made using ACM.

**AWS CloudHSM is ___**  
- AWS CloudHSM (Hardware Security Module) is a cloud-based hardware security module that enables you to generate and use your own encryption keys on AWS, while ensuring that the keys never leave the HSM unencrypted.

**AWS CloudHSM has ___, ____, and ___**  
- HSMs: The hardware security modules that are provisioned and managed.  
- Clusters: The collections of HSMs.  
- Keys: The encryption keys that are generated and stored in the HSMs.

**AWS CloudHSM can ___, ____, and ___**  
- Generate and use encryption keys on AWS.  
- Integrate with other AWS services for key management and security.  
- Provide monitoring and logging for HSM usage.

**AWS CloudHSM is by default always monitored by ___**  
- AWS CloudTrail: For monitoring API calls and changes made using CloudHSM.

**Amazon Cognito is ___**  
- Amazon Cognito is a user sign-up, sign-in, and access control service that enables you to add user authentication to your web and mobile apps.

**Amazon Cognito has ___, ____, and ___**  
- User Pools: The definitions of the user authentication processes.  
- Identity Pools: The definitions of the user identity processes.  
- Attributes: The data about the users.

**Amazon Cognito can ___, ____, and ___**  
- Add user authentication to your web and mobile apps.  
- Integrate with other AWS services for user management and access control.  
- Provide monitoring and logging for user authentication.

**Amazon Cognito is by default always monitored by ___**  
- Amazon CloudWatch: For monitoring user authentication performance and resource utilization.

**Amazon Detective is ___**  
- Amazon Detective is a security management service that enables you to easily analyze, investigate, and quickly identify the root cause of potential security issues or suspicious activities.

**Amazon Detective has ___, ____, and ___**  
- Graphs: The collections of data that are analyzed.  
- Entities: The AWS resources that are analyzed.  
- Findings: The potential security issues or suspicious activities that are identified.

**Amazon Detective can ___, ____, and ___**  
- Analyze, investigate, and identify the root cause of potential security issues or suspicious activities.  
- Integrate with other AWS services for security management and monitoring.  
- Provide monitoring and logging for analysis processes.

**Amazon Detective is by default always monitored by ___**  
- Amazon CloudWatch: For monitoring analysis performance and resource utilization.

**AWS Directory Service is ___**  
- AWS Directory Service is a managed directory service that makes it easy to set up and run directories in the AWS Cloud, enabling you to manage users, groups, and computers.

**AWS Directory Service has ___, ____, and ___**  
- Directories: The definitions of the managed directories.  
- Users: The data about the users.  
- Groups: The collections of users.

**AWS Directory Service can ___, ____, and ___**  
- Set up and run directories in the AWS Cloud.  
- Integrate with other AWS services for user and group management.  
- Provide monitoring and logging for directory usage.

**AWS Directory Service is by default always monitored by ___**  
- AWS CloudTrail: For monitoring API calls and changes made using Directory Service.

**Amazon GuardDuty is ___**  
- Amazon GuardDuty is a threat detection service that continuously monitors for malicious activity and unauthorized behavior to protect your AWS accounts, workloads, and data stored in Amazon S3.

**Amazon GuardDuty has ___, ____, and ___**  
- Findings: The potential threats that are detected.  
- Insights: The analysis of the findings.  
- Rules: The definitions of the threat detection processes.

**Amazon GuardDuty can ___, ____, and ___**  
- Continuously monitor for malicious activity and unauthorized behavior.  
- Integrate with other AWS services for threat detection and management.  
- Provide monitoring and logging for threat detection processes.

**Amazon GuardDuty is by default always monitored by ___**  
- Amazon CloudWatch: For monitoring threat detection performance and resource utilization.

**AWS IAM Identity Center is ___**  
- AWS IAM Identity Center is a service that enables you to centrally manage access to your AWS accounts and business applications.

**AWS IAM Identity Center has ___, ____, and ___**  
- Directories: The definitions of the managed directories.  
- Users: The data about the users.  
- Groups: The collections of users.

**AWS IAM Identity Center can ___, ____, and ___**  
- Centrally manage access to your AWS accounts and business applications.  
- Integrate with other AWS services for identity and access management.  
- Provide monitoring and logging for access management.

**AWS IAM Identity Center is by default always monitored by ___**  
- AWS CloudTrail: For monitoring API calls and changes made using IAM Identity Center.

**AWS Identity and Access Management (IAM) is ___**  
- AWS Identity and Access Management (IAM) is a service that enables you to manage access to AWS resources securely.

**AWS IAM has ___, ____, and ___**  
- Users: The data about the users.  
- Groups: The collections of users.  
- Policies: The definitions of the access permissions.

**AWS IAM can ___, ____, and ___**  
- Manage access to AWS resources securely.  
- Integrate with other AWS services for resource management and security.  
- Provide monitoring and logging for access management.

**AWS IAM is by default always monitored by ___**  
- AWS CloudTrail: For monitoring API calls and changes made using IAM.

**Amazon Inspector is ___**  
- Amazon Inspector is an automated security assessment service that helps improve the security and compliance of applications deployed on AWS.

**Amazon Inspector has ___, ____, and ___**  
- Assessments: The definitions of the security assessments.  
- Findings: The potential security issues that are detected.  
- Rules: The definitions of the security assessment processes.

**Amazon Inspector can ___, ____, and ___**  
- Automate security assessments for applications deployed on AWS.  
- Integrate with other AWS services for security management and monitoring.  
- Provide monitoring and logging for assessment processes.

**Amazon Inspector is by default always monitored by ___**  
- Amazon CloudWatch: For monitoring assessment performance and resource utilization.

**AWS Key Management Service (AWS KMS) is ___**  
- AWS Key Management Service (AWS KMS) is a managed service that makes it easy to create and control the encryption keys used to encrypt your data.

**AWS KMS has ___, ____, and ___**  
- Keys: The encryption keys that are created and controlled.  
- Aliases: The names that are used to refer to the keys.  
- Policies: The definitions of the key permissions.

**AWS KMS can ___, ____, and ___**  
- Create and control encryption keys.  
- Integrate with other AWS services for data encryption and security.  
- Provide monitoring and logging for key usage.

**AWS KMS is by default always monitored by ___**  
- AWS CloudTrail: For monitoring API calls and changes made using KMS.

**Amazon Macie is ___**  
- Amazon Macie is a fully managed data security and data privacy service that uses machine learning and pattern matching to discover and protect your sensitive data in AWS.

**Amazon Macie has ___, ____, and ___**  
- Jobs: The definitions of the data security and privacy processes.  
- Findings: The potential data security and privacy issues that are detected.  
- Policies: The definitions of the data security and privacy processes.

**Amazon Macie can ___, ____, and ___**  
- Discover and protect sensitive data in AWS.  
- Integrate with other AWS services for data security and privacy management.  
- Provide monitoring and logging for data security and privacy processes.

**Amazon Macie is by default always monitored by ___**  
- Amazon CloudWatch: For monitoring data security and privacy performance and resource utilization.

**AWS Network Firewall is ___**  
- AWS Network Firewall is a managed service that enables you to deploy essential network protections for your Amazon VPC workloads, such as stateful firewall rules, intrusion detection and prevention, and web filtering.

**AWS Network Firewall has ___, ____, and ___**  
- Firewalls: The definitions of the network protections.  
- Rules: The definitions of the firewall rules.  
- Filters: The definitions of the intrusion detection and web filtering processes.

**AWS Network Firewall can ___, ____, and ___**  
- Deploy essential network protections for your Amazon VPC workloads.  
- Integrate with other AWS services for network security and management.  
- Provide monitoring and logging for network protection processes.

**AWS Network Firewall is by default always monitored by ___**  
- Amazon CloudWatch: For monitoring network protection performance and resource utilization.

**AWS Resource Access Manager (AWS RAM) is ___**  
- AWS Resource Access Manager (AWS RAM) is a service that enables you to share your AWS resources easily with any AWS account or through AWS Organizations.

**AWS RAM has ___, ____, and ___**  
- Resource Shares: The definitions of the resource sharing processes.  
- Resources: The AWS resources that are shared.  
- Consumers: The AWS accounts or AWS Organizations that are granted access to the resources.

**AWS RAM can ___, ____, and ___**  
- Share AWS resources easily with any AWS account or through AWS Organizations.  
- Integrate with other AWS services for resource management and security.  
- Provide monitoring and logging for resource sharing processes.

**AWS RAM is by default always monitored by ___**  
- AWS CloudTrail: For monitoring API calls and changes made using RAM.

**AWS Secrets Manager is ___**  
- AWS Secrets Manager is a service that helps you protect access to your applications, services, and IT resources without the upfront investment and ongoing maintenance of hardware or software.

**AWS Secrets Manager has ___, ____, and ___**  
- Secrets: The definitions of the sensitive data that are protected.  
- Rotations: The definitions of the secret rotation processes.  
- Access: The definitions of the access permissions.

**AWS Secrets Manager can ___, ____, and ___**  
- Protect access to your applications, services, and IT resources.  
- Integrate with other AWS services for secret management and security.  
- Provide monitoring and logging for secret usage.

**AWS Secrets Manager is by default always monitored by ___**  
- AWS CloudTrail: For monitoring API calls and changes made using Secrets Manager.

**AWS Security Hub is ___**  
- AWS Security Hub is an AWS service that provides a comprehensive view of your security state in AWS, giving you a common view of alerts, warnings, and recommendations across accounts.

**AWS Security Hub has ___, ____, and ___**  
- Findings: The security alerts, warnings, and recommendations.  
- Insights: The analysis of the findings.  
- Controls: The definitions of the security best practices.

**AWS Security Hub can ___, ____, and ___**  
- Provide a comprehensive view of your security state in AWS.  
- Integrate with other AWS services for security management and monitoring.  
- Provide monitoring and logging for security findings.

**AWS Security Hub is by default always monitored by ___**  
- Amazon CloudWatch: For monitoring security findings performance and resource utilization.

**AWS Security Token Service (AWS STS) is ___**  
- AWS Security Token Service (AWS STS) is a web service that enables you to request temporary, limited-privilege credentials to access AWS resources.

**AWS STS has ___, ____, and ___**  
- Tokens: The definitions of the temporary credentials.  
- Policies: The definitions of the access permissions.  
- Requests: The definitions of the token requests.

**AWS STS can ___, ____, and ___**  
- Request temporary, limited-privilege credentials to access AWS resources.  
- Integrate with other AWS services for identity and access management.  
- Provide monitoring and logging for token requests.

**AWS STS is by default always monitored by ___**  
- AWS CloudTrail: For monitoring API calls and changes made using STS.

**AWS Shield is ___**  
- AWS Shield is a managed DDoS protection service that safeguards applications running on AWS.

**AWS Shield has ___, ____, and ___**  
- Protections: The definitions of the DDoS protection processes.  
- Events: The instances of DDoS attacks.  
- Metrics: The measurements of DDoS attack traffic.

**AWS Shield can ___, ____, and ___**  
- Safeguard applications running on AWS from DDoS attacks.  
- Integrate with other AWS services for application security and management.  
- Provide monitoring and logging for DDoS protection processes.

**AWS Shield is by default always monitored by ___**  
- Amazon CloudWatch: For monitoring DDoS protection performance and resource utilization.

**AWS WAF is ___**  
- AWS WAF (Web Application Firewall) is a web application firewall that helps protect your web applications from common web exploits that could affect availability, compromise security, or consume excessive resources.

**AWS WAF has ___, ____, and ___**  
- Web ACLs: The definitions of the web application firewall processes.  
- Rules: The definitions of the web security rules.  
- Filters: The definitions of the web security filters.

**AWS WAF can ___, ____, and ___**  
- Protect your web applications from common web exploits.  
- Integrate with other AWS services for web security and management.  
- Provide monitoring and logging for web security processes.

**AWS WAF is by default always monitored by ___**  
- Amazon CloudWatch: For monitoring web security performance and resource utilization.

