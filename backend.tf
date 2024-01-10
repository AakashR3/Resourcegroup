terraform {
  backend "azurerm" {
    # Load backend configuration from a separate file
    load_config_file = true
  }
}
