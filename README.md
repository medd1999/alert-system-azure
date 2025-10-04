# Real-Time Alert System on Azure

This project simulates a fintech-style alerting system using containerized microservices, Azure-native event triggers, and secure secrets management, with the purpose of demonstrating scalable DevOps practices including CI/CD pipelines, infrastructure as code, and automated secrets rotation. This file will serve as the `README.md` for the project, where you will find project documentation.

## Tech Stack
- **Python**: Backend microservices for data handling and alert dispatch
- **React.js**: Dashboard to visualize alerts and system health
- **Docker**: Containerization for deployment across environments
- **Terraform**: Provisioning resources (Infrastructure as Code)
- **GitHub Actions + Azure Pipelines**: CI/CD automation for build, test, and deployment
- **Azure Key Vault**: secrets storage and rotation
- **Azure Event Grid**: Event-driven alert trigger
- **Azure Monitor**: Performance tracking
- **Azure App Service**: Hosting containerized microservices


## Architecture Overview
- **Microservice A (*Listerner*)**: Receive mock transaction events through Azure Event Grid
- **Microservice B (*Alert*)**: Process events and send alerts
- **Azure App Service**: Host microservices as Docker containers with autoscaling
- **Azure Key Vault**: Store secrets securely and rotate them using CI/CD integration
- **GitHub Actions + Azure Pipelines**: GitHub Actions to build and push containers; Azure Pipeline deploys to App Service
- **Monitoring**: Azure Monitor tracks logs and metrics

## Azure Services
| Service                     |  Function                                                |
|-----------------------------|----------------------------------------------------------|
| **Azure Event Grid**        | Routes events (i.e. mock transactions) to microservices fro real-time processing  |
| **Azure Kkey Vault**        | Stores and rotates sensitive secrets (i.e. API keys, credentials) securely  |
| **Azure App Service**       | Host and run containerized microservices with autoscaling and CI/CD integration |
| **Azure Monitor**           | Track system performance, logs, metrics for observability and incident response  |
| **Azure Pipelines**         | Automate build, test, deployment workflows along with GitHub Actions  |


## Project Setup
1. Clone repo and configure `.env` files for local secrets
2. Deploy infrastructure with Terraform:
    ```bash
    cd terraform
    terraform init
    terraform apply
3. Push code to trigger GitHub Actions CI/CD pipeline
4. Monitor logs and alerts through Azure Monitor

![Python CI](https://github.com/medd1999/alert-system-azure/actions/workflows/python.yml/badge.svg)

