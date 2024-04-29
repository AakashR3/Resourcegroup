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
  principal_id         = "<principal_id_of_the_user>"
}
