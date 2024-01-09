terraform {
  backend "azurerm" {
    storage_account_name = local.backend_config["storage_account_name"]
    container_name       = local.backend_config["container_name"]
    key                  = local.backend_config["key"]
    resource_group_name  = local.backend_config["resource_group_name"]
  }
}


