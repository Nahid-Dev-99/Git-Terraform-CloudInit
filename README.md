# Automated NGINX Deployment via Terraform & Cloud-Init

Project Overview
This repository contains an Infrastructure as Code (IaC) project that fully automates the deployment of an Amazon EC2 instance using Terraform and Cloud-Init. The primary objective is to demonstrate how to configure an instance on its first boot without any manual intervention, ensuring the server comes online fully configured and ready to serve web traffic.

By passing a declarative YAML configuration file through Terraform's user_data argument, this project natively automates the installation and service management of the NGINX web server.

What This Project Can Be Used For
Zero-Touch Provisioning: Rapidly deploying a standardized, production-ready NGINX web server where software installations and system updates are handled automatically by the operating system.

Infrastructure Templating: Serving as a reusable architectural template for linking Terraform resource creation with OS-level bootstrapping logic.

Cloud-Agnostic Configuration: Demonstrating how to use Cloud-Init's universal YAML format to manage package installations, which operates identically across multiple cloud providers unlike OS-specific bash scripts.

Core Technologies
Infrastructure Provisioning: HashiCorp Terraform

Cloud Provider: Amazon Web Services (AWS EC2, Security Groups)

Server Bootstrapping: Cloud-Init (YAML)

Web Server: NGINX

How to Clone and Deploy
Follow these steps to pull the code to your local machine and deploy the infrastructure:

Clone the Repository:
Open your terminal and run the following command to download the project files:

Bash
git clone https://github.com/Nahid-Dev-99/Git-Terraform-CloudInit.git
cd [YOUR_REPO_NAME]
Initialize Terraform:
Download the necessary AWS provider plugins and initialize your backend state environment:

Bash
terraform init
Preview the Infrastructure Plan:
Review the exact AWS resources (EC2 instance and Security Groups) that Terraform will create:

Bash
terraform plan
Apply the Configuration:
Deploy the infrastructure to your AWS account. Terraform will pass the Cloud-Init instructions to the EC2 instance upon creation.

Bash
terraform apply
Access the Web Server:
Once the deployment is complete, Terraform will automatically output a direct HTTP URL to your terminal. Wait 2-3 minutes for the background Cloud-Init process to finish installing NGINX, then click the URL to view your live web server.
