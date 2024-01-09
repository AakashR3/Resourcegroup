variable "existing_resource_group_name" {
  type    = string
  default = "Aakash-Rg"
}

variable "existing_storage_account_name" {
  type    = string
  default = "tfteststg1"
}

variable "existing_container_name" {
  type    = string
  default = "tfstate"
}

variable "unique_id" {
  type    = string
  default = "default"
}

resource "random_string" "state_folder_suffix" {
  length  = 6
  special = false
}
# Service Principal Variables

variable "client_id" {
    description =   "Client ID (APP ID) of the application"
    type        =   string
}

variable "client_secret" {
    description =   "Client Secret (Password) of the application"
    type        =   string
}

variable "subscription_id" {
    description =   "Subscription ID"
    type        =   string
}

variable "tenant_id" {
    description =   "Tenant ID"
    type        =   string
}
