locals {
  unique_id_uppercase = upper(var.unique_id)
}

locals {
  backend_config = merge(
    {
      "storage_account_name" = "tfteststg1",
      "container_name"       = "tfstate"
      "key"                  = "terraform-${var.unique_id}/terraform.tfstate",
      "resource_group_name"  = "Aakash-Rg",
    },
    var.backend_extra_config
  )
}
