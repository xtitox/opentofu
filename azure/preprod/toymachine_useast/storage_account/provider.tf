terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "3.87.0" # Whilst version is optional, we /strongly recommend/ using it to pin the version of the Provider being used
    }
  }
}

provider "azurerm" {
  features {}
  subscription_id = var.subscription_id_development
}
