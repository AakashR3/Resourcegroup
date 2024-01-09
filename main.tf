resource "azurerm_resource_group" "test" {
  name     = "terraform-tf-${random_string.unique_id.result}"
  location = "Central US"

  tags = {
    Region      = "Central US"
    # Team        = var.team_tag
    # Environment = "dev"
    # Creator     = var.creator
}
}
resource "azurerm_storage_account" "new" {
  name                      = "terraformstorage${var.unique_id}"
  resource_group_name       = azurerm_resource_group.new.name
  location                  = azurerm_resource_group.new.location
  account_tier              = "Standard"
  account_replication_type  = "LRS"
}

resource "azurerm_storage_container" "new_state_folder" {
  name                   = "terraform-state-${upper(random_string.state_folder_suffix.result)}"
  storage_account_name   = azurerm_storage_account.new.name
  container_access_type  = "private"
}
