variable "Resource_group_name" {
  type    = string
  #default = "user"
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
#variable "object_id" {
#  description = "Object ID of the Azure AD user, service principal, or application"
#  type        = string
#}

variable "user_email" {
  description = "Email of the user to grant access"
}
