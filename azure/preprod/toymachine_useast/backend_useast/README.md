# Create workspace only once
```
az account set --subscription "Development toymachine"
terraform init

terraform workspace new nonprod
terraform plan
```
---
## Workspace created
```
az account set --subscription "Development toymachine"
terraform init
terraform workspace select nonprod
terraform plan
```