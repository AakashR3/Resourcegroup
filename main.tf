resource "azurerm_resource_group" "test" {
  name     = var.resource_group_name
  location = "Central India"

  tags = {
    Region = "Central India"
  }
}

resource "azurerm_role_assignment" "contributor_assignment" {
  #scope                = azurerm_resource_group.test.id
  role_definition_name = "Contributor"
  principal_id         = data.azurerm_directory_object.user.id
}
