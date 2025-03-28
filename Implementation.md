# URL Shortener Service

### Overview
A modern URL shortening service built with Python FastAPI backend and simple HTML/JavaScript frontend.

## Project Structure
```
.
├── frontend/         # HTML/Javascript frontend application
├── backend/         # FastAPI backend application files and Dockerfiles
└── k8s/            # Kubernetes configuration files
```

## Prerequisites
- Node.js 18.x or later
- Docker
- kubectl
- AWS CLI
- eksctl

## Steps to deploy
Terraform is used for creation of EKS cluster and state of cluster is stored in S3 bucket with DynamoDB for state locking. For storing images, Amazon ECR have been used. The application is configured to be deployed on Amazon EKS.

### Infrastructure Creation
- Create DynamoDB and S3 bucket for storing Terraform state and state locking. The code for creation of S3 bucket and DynamoDB is at 'state-lock-terraform'
- Create EKS cluster using TF code present at 'terraform-eks-cluster' . The terraform code to create EKS cluster is written in the form of modules to make it reusable.
- Create frontend and backend repositories in AWS ECR.
- Build docker images for frontend and backend and push docker images to the ECR repositories.

### Deployment
- Deployment files are present at 'k8s'
- To deploy in kubernetes, first create secrets and configmap.yaml and then create database.yaml. After this backend and frontend can be created.
