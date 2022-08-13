# DevOps_Assignment
Gitlab repository-  https://gitlab.com/akabhishek4444/flaskappdeploy



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

# Stage 1: Dockerization

![Git](https://github.com/Abhishek-569/DevOps_Assignment/blob/main/images/dockerfile.PNG)
![Git](https://github.com/Abhishek-569/DevOps_Assignment/blob/main/images/step1.1.PNG)
I have  build a docker image of flask application ready to deploy complete with all libraries and dependencies using Dockerfile.  

![Git](https://github.com/Abhishek-569/DevOps_Assignment/blob/main/images/step1.4.PNG)
I have  provided a environment variable in our image which can take a message and display it on our website. Environment variable makes it easy to change our message with each container without changing the base image everytime.

![Git](https://github.com/Abhishek-569/DevOps_Assignment/blob/main/images/Capture.PNG)
Than we have uploaded our image on our registry in  AWS ECR to make a backup of it on cloud. AWS ECR provides us with a URI which can be used by anyone around the world to access our image easily .

Our website with default Value of environment variable:
![Git](https://github.com/Abhishek-569/DevOps_Assignment/blob/main/images/step1.3.PNG)

Our Website with environment variable value changed  with docker run command
![Git](https://github.com/Abhishek-569/DevOps_Assignment/blob/main/images/step1.5.PNG)

# Stage 2: CI/CD Pipeline

![Git](https://github.com/Abhishek-569/DevOps_Assignment/blob/main/images/step2.PNG)
For our CI/CD pipeline we have used Gitlab to automatically build a new image and push the same in AWS ECR automatically.

![Git](https://github.com/Abhishek-569/DevOps_Assignment/blob/main/images/step1.8.PNG)
We have authenticated with our registery and than ploaded the image on AWS ECR

![Git](https://github.com/Abhishek-569/DevOps_Assignment/blob/main/images/step1.9.PNG)
We Have renamed our image and pushed it to AWS ECR.

![Git](https://github.com/Abhishek-569/DevOps_Assignment/blob/main/images/1.PNG)
![Git](https://github.com/Abhishek-569/DevOps_Assignment/blob/main/images/step1.10.PNG)
Gitlab runner has automatically up updated docker image on AWS ECR with latest image.

# Stage 3: Deployment to ECS

![Git](https://github.com/Abhishek-569/DevOps_Assignment/blob/main/images/last.PNG)
![Git](https://github.com/Abhishek-569/DevOps_Assignment/blob/main/images/last2.PNG)
![Git](https://github.com/Abhishek-569/DevOps_Assignment/blob/main/images/last3.PNG)
We have used gitlab-runner to setup a workflow which would deploy the given ECR image to ECS on Fargate.

![Git](https://github.com/Abhishek-569/DevOps_Assignment/blob/main/images/ecs1.PNG)
![Git](https://github.com/Abhishek-569/DevOps_Assignment/blob/main/images/ecs.PNG)
Our ECS cluster running on AWS ECS

## Final Website on Cloud

![Git](https://github.com/Abhishek-569/DevOps_Assignment/blob/main/images/websitemain.PNG)
Original Image 

![Git](https://github.com/Abhishek-569/DevOps_Assignment/blob/main/images/step2.1.PNG)
After the change new updated image on AWS ECS

# BONUS
![Git](https://github.com/Abhishek-569/DevOps_Assignment/blob/main/images/bonus.PNG)
![Git](https://github.com/Abhishek-569/DevOps_Assignment/blob/main/images/bonus3.PNG)
I have setup a Load balancer and autoscaling on our website to ensure zero downtime on our website due to increased traffic.


## Script 
![Git](https://github.com/Abhishek-569/DevOps_Assignment/blob/main/images/dockerfile1.PNG)
This file has updated the value of environment variable and setup the flask in our container

# what I learned from this project
I learned about various new applications and services and how to use them  such as AWS ECR , AWS ECS and Flask. I learned how to deploy CI/CD workflow on AWS using gitlab-runner. I also lerned how to update the image on ECR and deploy the same on ECS Fargate. I also learned the benefit of auto scaling and load balancer to manage the traffic on website.
It was a good experience and I learned a lot from facing many difficults and problems while making this project.

## Repository on Gitlab
link =https://gitlab.com/akabhishek4444/flaskappdeploy
