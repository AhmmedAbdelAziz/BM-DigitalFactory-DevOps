# DevOps Engineer Challenge Solution

## Table of Contents
- [Introduction](#introduction)
- [Challenge Overview](#challenge-overview)
- [Solution Architecture](#solution-architecture)
- [Implementation Details](#implementation-details)
- [CI/CD Pipeline](#cicd-pipeline)
- [Kubernetes Deployment](#kubernetes-deployment)
- [Additional Features](#additional-features)
- [Future Improvements](#future-improvements)
- [Conclusion](#conclusion)

## Introduction

This repository contains my solution to the DevOps Engineer hiring challenge. The task involves dockerizing a Spring Boot application and implementing a comprehensive CI/CD pipeline to deploy it on a Kubernetes cluster. This README provides an overview of my approach, implementation details, and instructions for running the solution.

## Challenge Overview

The main objectives of this challenge were to:
1. Dockerize a provided Spring Boot application
2. Implement a CI/CD pipeline using Azure DevOps (with self hosted agent)
3. Deploy the application to a Kubernetes cluster
4. Create an Ingress for the application
5. Implement separate deployments for development and production environments

## Solution Architecture

![alt text](./bm-task-cicd-drawio.drawio.svg)


The solution architecture consists of the following components:
- Version Control: GitHub
- CI/CD Tool: Azure DevOps
- Container Registry: Docker Hub 
- Kubernetes Cluster: K3s

## Implementation Details

### Dockerization
- Created a Dockerfile optimized for Spring Boot applications
- Implemented multi-stage builds to reduce image size and improve security

### CI/CD Pipeline
Implemented a comprehensive pipeline in Azure DevOps with the following stages:
1. Lint Stage: Using CheckStyle for Java
2. Unit Test Stage: JUnit tests with code coverage reports
3. SonarQube Stage: Code quality and security analysis
4. Build Image Stage: Docker image creation
5. Push Image to Registry: Pushing to docker hub
6. Pull Image from Registry: Preparation for deployment
7. Deploy to Kubernetes: Using K3s for deployments
8. Ingress Creation: Nginx Ingress Controller
9. Development Environment Deployment
10. Production Environment Deployment

### Kubernetes Deployment
- Implemented namespace isolation for dev and prod environments

## CI/CD Pipeline

The CI/CD pipeline is implemented in Azure DevOps using YAML. Key features include:
- Branch policies to enforce code review and build validation
- Environment-specific variable groups for secure configuration management
- Approval gates for production deployments
- Automated rollback mechanism in case of deployment failures


## Kubernetes Deployment

Kubernetes manifests includes:
- Deployments with configurable replicas
- Services for internal communication
- Ingress resources for external access


## Additional Features

- Created a `/live` endpoint for health checks and readiness probes


## Future Improvements

Given more time, I would enhance the solution with:
- Implement Infrastructure as Code using Terraform
- Add end-to-end testing in the pipeline
- Implement blue-green deployment strategy
- Set up a service mesh for advanced traffic management and security

## Conclusion

This solution demonstrates a robust, scalable, and secure approach to deploying a Spring Boot application on Kubernetes using modern DevOps practices. It showcases my skills in containerization, CI/CD implementation, Kubernetes deployment, and overall system architecture design.

I'm excited about the opportunity to discuss this solution in more detail and explore how my skills and experience align with your team's needs.
