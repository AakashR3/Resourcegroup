terraform {
  backend "azurerm" {
    resource_group_name   = "Aakash-Rg"
    storage_account_name   = "tfteststg1"
    container_name         = "tfstate"
    key                    = "PI94C9EQFAHJ/terraform.tfstate"
  }
}
