output "resource_group_name" {
  value = azurerm_resource_group.test.name
}

output "resource_group_location" {
  value = azurerm_resource_group.test.location
}

output "resource_group_tags" {
  value = azurerm_resource_group.test.tags
}
