terraform {
  backend "azurerm" {
    resource_group_name   = "Aakash-Rg"
    storage_account_name   = "tfteststg1"
    container_name         = "tfstate"
    key                    = "tfstate/${var.unique_id}/terraform.tfstate"
  }
}

resource "azurerm_resource_group" "test" {
  name     = "terraform-rg-${var.unique_id}"
  location = "Central US"

  tags = {
    Region      = "Central US"
    UniqueID    = var.unique_id
    # Team        = var.team_tag
    # Environment = "dev"
    # Creator     = var.creator
  }
}

