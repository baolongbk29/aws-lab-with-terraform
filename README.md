# aws-lab-with-terraform

## Labs

| ID  | Category    | Name                                     | URL                                                            | Status  |
| :-- | :---------- | :--------------------------------------- | :------------------------------------------------------------- | :------ |
| 01  | get-started | EC2 Create Simple Instance               | [Explore](./01-create-ec2-instance)                            |✔️ Done  |
| 02  | get-started | S3 Create Simple Bucket                  | [Explore](./02-create-s3-bucket)                               |✔️ Done  |
| 03  | get-started | Execute command on localhost             |                                                                |         |
| 04  | get-started | AWS Codebuild demo                       |                                                                |         |
| 05  | get-started | AWS CodePipeline demo                    |                                                                |         |
| 06  | tutorial    | S3 Static Website                        |                                                                |         |
| 07  | tutorial    | Serverless Basic Application             |                                                                |         |
| 08  | tutorial    | WordPress Instance With Amazon Lightsail |                                                                |         |
| 09  | workshop    | AWS 3 tier web application               |                                                                |         |
| 10  | self-hosted | Focalboard App Basic on AWS EC2 Ubuntu   |                                                                |         |
| 11  | practice    | AWS Networking with sample 3 tiers web   |                                                                |         |


## terraform-sample-project
Sample Terraform project with best practice

```
terraform-project/
│
├── main.tf
├── variables.tf
├── outputs.tf
│
├── modules/
│   ├── example_module/
│   │   ├── main.tf
│   │   ├── variables.tf
│   │   └── outputs.tf
├── environments/
│   ├── prod/
│   │   ├── main.tf
│   │   ├── variables.tf
│   │   └── outputs.tf
│   │
│   └── dev/
│       ├── main.tf
│       ├── variables.tf
│       └── outputs.tf
│
├── providers.tf
├── terraform.tfvars
└── backend.tf
```

### Project Structure Description

#### 1. Root Level
- `main.tf`: Main configuration for the overall infrastructure.
- `variables.tf`: Declaration of variables used throughout the project.
- `outputs.tf`: Definition of output values to be extracted and used elsewhere.
- `providers.tf`: Provider configurations for AWS or any other providers.
- `terraform.tfvars`: Storage for non-sensitive variables or overrides default values.
- `backend.tf`: Specification of the backend configuration for remote state storage.

#### 2. Modules
- `example_module/`: The example module.

Each module contains:
- `main.tf`: Configuration for that specific module.
- `variables.tf`: Module-specific variables.
- `outputs.tf`: Output values specific to that module.

#### 3. Environments
- `prod/`: Environment-specific configurations for production.
- `dev/`: Environment-specific configurations for development.

Each environment includes:
- `main.tf`: Configuration specific to that environment.
- `variables.tf`: Environment-specific variables.
- `outputs.tf`: Environment-specific outputs.

## Deploy Workflow
    terraform init
    terraform fmt
    # Then check for logic errors
    terraform validate
    terraform plan -out=tfplan
    terraform apply "tfplan"
    terraform output #Get info
