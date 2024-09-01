# Host Ecommerce Website on AWS with Terraform

## Overview

This project serves as an introduction to Infrastructure as Code (IaC) using Terraform. The goal is to deploy an eCommerce website on AWS and configure various AWS resources using code. This project helped me learn about configuring and managing AWS resources with Terraform and introduced me to DevOps tools like Git, GitHub, and Visual Studio Code.

## Table of Contents

1. [Installation](#installation)
   - [Install Terraform](#install-terraform)
   - [Create a GitHub Repository](#create-a-github-repository)
   - [Install Git](#install-git)
   - [Generate Key Pairs](#generate-key-pairs)
   - [Add Public SSH Key to GitHub](#add-public-ssh-key-to-github)
   - [Clone Your Repository](#clone-your-repository)
   - [Push Your Changes](#push-your-changes)
   - [Install Visual Studio Code](#install-visual-studio-code)
   - [Install AWS CLI](#install-aws-cli)
   - [Create IAM User](#create-iam-user)
   - [Create a Profile for Your IAM User](#create-a-profile-for-your-iam-user)
   - [Create S3 Bucket](#create-s3-bucket)
   - [Authenticate Terraform with AWS](#authenticate-terraform-with-aws)
2. [Configuration](#configuration)
   - [VPC](#vpc)
   - [NAT Gateway](#nat-gateway)
   - [Security Groups](#security-groups)
   - [RDS](#rds)
   - [Application Load Balancer](#application-load-balancer)
   - [SNS Topic](#sns-topic)
   - [Auto Scaling Group](#auto-scaling-group)
   - [Route 53](#route-53)
   - [Variables](#variables)
3. [Additional Notes](#additional-notes)

## Installation

### Install Terraform

1. Search for Terraform on Google and follow the installation instructions for your operating system.
2. Verify installation by running `terraform --version` in your terminal.

### Create a GitHub Repository

1. Create a new repository on GitHub. This will store your Terraform configuration files.

### Install Git

1. Download and install Git from the official website.
2. Verify installation by running `git --version` in your terminal.
3. Configure Git with your username and email:

    ```bash
    git config --global user.name "Your Name"
    git config --global user.email "youremail@example.com"
    ```

### Generate Key Pairs

1. Open PowerShell (Windows) or Terminal (Mac) and generate SSH keys:

    ```bash
    ssh-keygen -t rsa -b 2048
    ```

2. Follow the prompts and note the file path (e.g., `C:\Users\youruser\.ssh\id_rsa`).

### Add Public SSH Key to GitHub

1. Open the generated public key file (`id_rsa.pub`) with a text editor.
2. Copy the key content.
3. Go to GitHub Settings > SSH and GPG keys > New SSH Key.
4. Paste the key and add a descriptive title.

### Clone Your Repository

1. Navigate to your desired directory and clone the repository:

    ```bash
    git clone git@github.com:yourusername/Terraform-Project.git
    ```

### Push Your Changes

1. Navigate to your cloned repository:

    ```bash
    cd C:\Users\youruser\Documents\Terraform-Project
    ```

2. Stage, commit, and push changes:

    ```bash
    git add -A
    git commit -m "Describe your changes"
    git push
    ```

### Install Visual Studio Code

1. Download and install Visual Studio Code.
2. Install Terraform extensions from the Extensions marketplace (`Terraform` and `HashiCorp Terraform`).

### Install AWS CLI

1. Download and install AWS CLI from the official website.
2. Verify installation by running `aws --version` in your terminal.

### Create IAM User

1. Go to the AWS Management Console and create a new IAM user.
2. Attach the `AdministratorAccess` policy.
3. Create access keys for CLI access and save them securely.

### Create a Profile for Your IAM User

1. Configure AWS CLI with your IAM user credentials:

    ```bash
    aws configure --profile terraform-user
    ```

2. Enter your access key, secret access key, and default region.

### Create S3 Bucket

1. In the AWS Console, create an S3 bucket to store the Terraform state file.
2. Enable versioning on the bucket.

### Authenticate Terraform with AWS

1. Open your project folder in Visual Studio Code and create a `main.tf` file with the following content:

    ```hcl
    provider "aws" {
      region = "us-east-1"
      profile = "terraform-user"
    }

    terraform {
      backend "s3" {
        bucket = "your-terraform-bucket"
        key    = "terraform.tfstate"
        region = "us-east-1"
        profile = "terraform-user"
      }
    }
    ```

2. Initialize Terraform:

    ```bash
    terraform init
    ```

3. Commit and push the new files to GitHub.

## Configuration

### VPC

Create a Virtual Private Cloud (VPC) with public and private subnets across two availability zones, an internet gateway, and route tables.

- See `vpc.tf`

### NAT Gateway

Configure a NAT Gateway to allow private subnet resources to access the internet.

- See `natgateway.tf`

### Security Groups

Define security groups for SSH, ALB, webserver, and database instances.

- See `securitygroup.tf`

### RDS

Set up an RDS instance from a snapshot for MySQL.

- See `rds.tf`

### Application Load Balancer

Configure an Application Load Balancer (ALB) to distribute traffic across EC2 instances.

- See `alb.tf`

### SNS Topic

Create an SNS topic for notifications.

- See `sns.tf`

### Auto Scaling Group

Set up an Auto Scaling Group (ASG) for dynamic instance management and high availability.

- See `asg.tf`

### Route 53

Use Route 53 for domain registration and DNS records.

- See `route53.tf`

### Variables

Define variables used in Terraform configuration.

- See `variables.tf`

## Additional Notes

- Ensure to replace placeholder values with your specific details in Terraform files.
- Review Terraform documentation for best practices and advanced configurations.

---

Feel free to adjust the content to better fit your project specifics or personal preferences.
