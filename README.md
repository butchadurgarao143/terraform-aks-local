# Terraform AKS Local Backend Project

## Project Overview
This project demonstrates how to deploy Azure Kubernetes Service (AKS) using Terraform with a local backend. It includes:
- Reusable Terraform modules
- GitHub Actions CI/CD workflows
- Manual approval for apply
- Multi-environment support (dev and prod)

## Best Practices
1. **Modular Code:** Reusable and scalable Terraform modules.
2. **Separate Environments:** Isolated configurations for dev and prod.
3. **Version Control State Files:** State files excluded from version control using .gitignore.
4. **CI/CD Automation:** Automated plan and validate steps using GitHub Actions.
5. **Manual Approval:** Prevents accidental infrastructure changes with a manual approval step.

## Setup Instructions
```bash
cd environments/dev
terraform init
terraform validate
terraform plan
terraform apply
```

Repeat for `prod` by switching to `environments/prod`.