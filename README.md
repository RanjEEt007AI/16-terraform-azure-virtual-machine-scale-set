# Terraform Azure Availability Set

## Overview

This project demonstrates how to create an Azure Availability Set using Terraform.

Azure Availability Set helps improve the availability and reliability of applications by distributing Virtual Machines across multiple fault domains and update domains.

## Resources Created

* Resource Group
* Azure Availability Set

## Project Structure

```text
15-terraform-azure-availability-set-simple/
│
├── main.tf
├── provider.tf
├── .gitignore
└── README.md
```

## Prerequisites

Before running this project, make sure you have:

* Terraform installed
* Azure account
* Azure CLI installed
* Logged into Azure

## Login to Azure

```bash
az login
```

## Initialize Terraform

```bash
terraform init
```

## Validate Configuration

```bash
terraform validate
```

## Generate Execution Plan

```bash
terraform plan
```

## Deploy Infrastructure

```bash
terraform apply -auto-approve
```

## Destroy Infrastructure

```bash
terraform destroy -auto-approve
```

## Availability Set Configuration

| Property       | Value |
| -------------- | ----- |
| Fault Domains  | 2     |
| Update Domains | 5     |
| Managed        | True  |

## Benefits of Availability Set

* Improves application availability
* Protects against hardware failures
* Reduces downtime during maintenance
* Distributes VMs across fault and update domains

## Notes

* Availability Sets are used mainly with multiple Virtual Machines.
* Azure distributes VMs automatically across different hardware resources.
* This setup increases resilience and minimizes service interruption.

## Author

Ranjeet Kumar
