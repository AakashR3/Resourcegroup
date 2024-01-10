terraform {
  backend "azurerm" {
    resource_group_name   = "Aakash-Rg"
    storage_account_name   = "tfteststg1"
    container_name         = "tfstate"
    key                    = "tfstate/${unique_id}/terraform.tfstate"
  }
  
  required_version = ">= 0.14"
}

variable "unique_id" {}
