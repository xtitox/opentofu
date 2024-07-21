# Create workspace only once
```
az account set --subscription "Development toymachine"
terraform init

terraform workspace new dev
terraform plan
```
---
## Workspace created
```
az account set --subscription "Development toymachine"
terraform init
terraform workspace select dev
terraform plan
```