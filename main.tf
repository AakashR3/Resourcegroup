resource "azurerm_resource_group" "test" {
  name     = "terraform-tf-${random_string.unique_id.result}"
  location = "Central US"

  tags = {
    Region      = "Central US"
    # Team        = var.team_tag
    # Environment = "dev"
    # Creator     = var.creator
}

