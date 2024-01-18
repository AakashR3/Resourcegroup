variable "resource_group_name" {
  type    = string
}
variable "user_email" {
  type = string
  # Add the email address of the user for whom you want to assign the role
}
variable "unique_id" {
  type    = string
  default = "default_value"
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
