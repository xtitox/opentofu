resource "azurerm_resource_group" "rg_non_prod" {
  name     = "toymachine-nonprod-rg"
  location = var.location
}

resource "azurerm_storage_account" "tf_state_storage_account" {
  name                     = "toymachine"
  resource_group_name      = azurerm_resource_group.rg_non_prod.name
  location                 = var.location
  account_tier             = "Standard"
  account_replication_type = "GRS"
  account_kind             = "StorageV2"
  access_tier              = "Cool"
  allow_nested_items_to_be_public = false
  min_tls_version          = "TLS1_2"
  
  blob_properties {
    versioning_enabled       = true
    change_feed_enabled      = true
    delete_retention_policy {
        days = 35
    }
    restore_policy {
        days = 31
    }
  }
}

resource "azurerm_storage_container" "tf_state_global_container" {
  name                  = "toymachine-tfstate"
  storage_account_name  = azurerm_storage_account.tf_state_storage_account.name
  container_access_type = "private"
}