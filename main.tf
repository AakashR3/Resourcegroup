resource "azurerm_resource_group" "test" {
  name     = var.Resource_group_name
  location = "Central India"

  tags = {
    Region = "Central India"
  }
}
#resource "azurerm_role_assignment" "owner" {
#  scope                = azurerm_resource_group.test.id
#  role_definition_name = "Owner"
#  principal_id         = ""
#}

resource "azurerm_role_assignment" "owner" {
  scope                = azurerm_resource_group.test.id
  role_definition_name = "Owner"
  principal_id         = null  # Placeholder, since we're not using it directly
  principal_type       = "User"
  principal_name       = var.user_email
}
