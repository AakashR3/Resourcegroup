resource "azurerm_resource_group" "test" {
  name     = "terraform-tf"
  location = "Central US"

  tags = {
    Region      = "Central US"
    # Team        = var.team_tag
    # Environment = "dev"
    # Creator     = var.creator
}
}
