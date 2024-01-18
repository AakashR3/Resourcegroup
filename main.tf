resource "azurerm_resource_group" "test" {
  name     = var.resource_group_name
  location = "Central India"

  tags = {
    Region = "Central India"
  }
}

