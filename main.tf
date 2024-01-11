resource "azurerm_resource_group" "test" {
  #name     = "Aakash-terraform-rg-${var.unique_id}"
  name     = "Aakash-terraform-rg"
  location = "Central US"

  tags = {
    Region      = "Central US"
    #UniqueID    = var.unique_id
    # Team        = var.team_tag
    # Environment = "dev"
    # Creator     = var.creator
  }
}

