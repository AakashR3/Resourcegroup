terraform {
  backend "azurerm" {
    resource_group_name   = "Aakash"
    storage_account_name   = "tfteststg1"
    container_name         = "tfstate"
    key                    = "terraform.tfstate"
  }
}
