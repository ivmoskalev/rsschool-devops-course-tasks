# rsschool-devops-course-tasks

## Task 1: AWS Account Configuration

In this task, we automate the provisioning of AWS resources using Terraform and integrate it with GitHub Actions for continuous deployment.

## Project Structure

```bash
.
├── .github
│   └── workflows
│       └── terraform.yml        # GitHub Actions workflow file
├── .gitignore                   # Git ignore file
├── main.tf                      # Terraform backend configuration
├── outputs.tf                   # Output definitions
├── providers.tf                 # Provider configurations
├── resources.tf                 # Resource definitions
├── variables.tf                 # Variable definitions
├── terraform.tfvars.example     # Template variables file
├── README.md                    # Task documentation
```

## Setup Instructions

1. **Clone the Repository**

`git clone https://github.com/ivmoskalev/rsschool-devops-course-tasks.git`

2. **Prepare the Variables File**

`cp terraform.tfvars.example terraform.tfvars`

Edit `terraform.tfvars` with your data

3. **Initialize Terraform**

`terraform init`

4. **Run the Terraform Plan**

`terraform plan`

5. **Run the Terraform Apply**

`terraform apply`
