resource "azurerm_resource_group" "test" {
  name     = var.resource_group_name
  location = "Central India"

  tags = {
    Region      = "Central India"
    # UniqueID    = var.unique_id  # Uncomment if you have a variable named unique_id
    # Team        = var.team_tag    # Uncomment if you have a variable named team_tag
    # Environment = "dev"
    # Creator     = var.creator
  }
}

