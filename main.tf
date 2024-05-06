resource "azurerm_resource_group" "test" {
  name     = var.Resource_group_name
  location = "Central India"

  tags = {
    Region = "Central India"
  }
}
resource "azurerm_role_assignment" "owner" {
  scope                = azurerm_resource_group.test.id
  role_definition_name = "Owner"
  principal_id         = "93b48675-c174-49da-816f-82eda8dc3e1d"
}


