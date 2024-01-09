#terraform {
#  backend "azurerm" {
#    resource_group_name  = "Aakash-Rg"
#    storage_account_name = "tfteststg1"
#    container_name       = "tfstate"
#    key                  = "terraform.tfstate"
#  }
#}
terraform {
  backend "azurerm" {
    storage_account_name = var.existing_storage_account_name
    container_name       = var.existing_container_name
    key                  = "terraform.tfstate"
    resource_group_name  = var.existing_resource_group_name
  }
}

