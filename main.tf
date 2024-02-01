resource "azurerm_resource_group" "test" {
  name     = var.Resource_group_name
  location = "Central India"

  tags = {
    Region = "Central India"
  }
}
resource "azurerm_role_assignment" "contributor" {
  principal_id         = var.object_id
  role_definition_name = "Contributor"
  scope                = azurerm_resource_group.test.id
}
