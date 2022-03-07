# DevOps_Assignment
In this project I have completed the following stages:

Stage 1: Dockerization

Dockerize a simple Hello World Flask Application which responds with a message that is set up as an environment variable and deploy the docker image to AWS ECR.


Stage 2: CI/CD Pipeline

Develop a CI/CD pipeline(Github Actions/Jenkins or your own choice) which would lint the python code and push the updated image to ECR.


Stage 3: Deployment to ECS

Setup a workflow which would deploy the given ECR image to ECS on EC2 instance or Fargate.

and also
BONUS:

ECS could be configured for autoscaling and/or load-balancing.

# CI/CD WORKFLOW
![Git](https://github.com/Abhishek-569/DevOps_Assignment/blob/main/images/workflow.PNG)


### Step1.
Setup virtual python environment

### Step2.
Create and Run virtual Flask Application

### Step3.
Building the Dockerfile and running the container

### Step4.
Pushing the Dockerimage to AWS ECR (elastic container registry)

### Step5.
Create a New repository on gitlab and push the project code into that

### Step6.
Setup local Gitlab runner

### Step7.
Create a new AWS cluster and link the image to Dockerhub


# Applications and Services used in project

## Docker
![Git](https://d1.awsstatic.com/acs/characters/Logos/Docker-Logo_Horizontel_279x131.b8a5c41e56b77706656d61080f6a0217a3ba356d.png)

Docker is a programme that uses containers to make it easier to construct, deploy, and operate applications. Containers enable a developer to bundle a programme with all of its components, including libraries and other dependencies, and deliver it as a single package. The developer may feel comfortable that the application will work on any other Linux machine, independent of any specific settings the machine may have that differ from the machine used for authoring and testing the code, owing to the container.

## Flask
![Git](https://upload.wikimedia.org/wikipedia/commons/thumb/3/3c/Flask_logo.svg/1200px-Flask_logo.svg.png)

Flask is a micro web framework written in Python. It is classified as a microframework because it does not require particular tools or libraries. It has no database abstraction layer, form validation, or any other components where pre-existing third-party libraries provide common functions.

## GitLab
![Git](https://pbs.twimg.com/profile_images/694241544899923968/Yj5sO9P4_400x400.png)

GitLab is a web-based Git repository that provides free open and private repositories, issue-following capabilities, and wikis. It is a complete DevOps platform that enables professionals to perform all the tasks in a project—from project planning and source code management to monitoring and security.

## Gitlab-runner
![Git](https://gitlab.com/uploads/-/system/project/avatar/250833/runner_logo.png)

GitLab runner is a build instance which is used to run the jobs over multiple machines and send the results to GitLab and which can be placed on separate users, servers, and local machine. You can register the runner as shared or specific after installing it. 

## AWS ECR(Elastic Container Registry)
![Git](https://labs.tadigital.com/wp-content/uploads/2018/07/RCE.png)

Amazon ECR is a fully managed container registry offering high-performance hosting, so you can reliably deploy application images and artifacts anywhere.

## AWS ECS Fargate (Elastic Container Services)
![Git](https://digital.ai/sites/default/files/pictures/styles/maxwidth_300/public/pt_logos/amazon-ecs.png?itok=4kq9I_sN)

Amazon ECS is a fully managed container orchestration service that makes it easy for you to deploy, manage, and scale containerized applications.

AWS Fargate is a serverless, pay-as-you-go compute engine that lets you focus on building applications without managing servers. AWS Fargate is compatible with both Amazon Elastic Container Service (ECS) and Amazon Elastic Kubernetes Service (EKS).
