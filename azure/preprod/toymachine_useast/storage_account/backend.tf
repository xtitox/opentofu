terraform {
  required_version = "= 1.6.0"
  backend "azurerm" {
    resource_group_name  = "toymachine-nonprod-rg"
    storage_account_name = "toymachine"
    container_name       = "toymachine-tfstate"
    key                  = "preprod/toymachine_useast/storage_account/terraform.tfstate"
  }
}