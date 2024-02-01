resource "azurerm_resource_group" "test" {
  name     = var.Resource_group_name
  location = "Central India"

  tags = {
    Region = "Central India"
  }
}
resource "azurerm_role_assignment" "contributor" {
  principal_id         = "95d7b055-4209-4293-be75-1fae21336fec"
  role_definition_name = "Contributor"
  scope                = azurerm_resource_group.test.id
}
