# 🚀 Terraform Cloud Bootcamp

## 🌟 Project Goal

Build a **secure, production-like cloud infrastructure** on AWS using **Terraform** — from scratch.

This project covers the full basics of infrastructure automation, and it's perfect for those new to:

- Terraform 🛠️
- Networking and AWS 🌐
- Infrastructure as Code (IaC) ☁️

---

## 🧱 What This Project Builds

✅ Using Terraform, this project will **provision the following on AWS**:

- 🔐 **VPC** with CIDR blocks
- 🌐 **Public and Private Subnets**
- 🌎 **Internet Gateway** + **Route Tables**
- 🔁 **NAT Gateway** (for private subnet internet access)
- 💻 **EC2 Instances**:
  - Bastion (Public subnet)
  - App Server (Private subnet)
- 🗄️ **RDS MySQL Database** in private subnet
- 🔒 **Security Groups & IAM Roles**

---

## 🗂️ Folder Structure

```bash
terraform-cloud-bootcamp/
├── main.tf
├── variables.tf
├── outputs.tf
├── provider.tf
├── terraform.tfvars
├── .gitignore
├── README.md
└── modules/
    ├── vpc/
    │   ├── main.tf
    │   ├── variables.tf
    │   └── outputs.tf
    ├── ec2/
    │   ├── main.tf
    │   ├── variables.tf
    │   └── outputs.tf
    └── rds/
        ├── main.tf
        ├── variables.tf
        └── outputs.tf
