resource_group_reference = {
  "rg1" = {
    name     = "static-resource-container-001"
    location = "centralindia"
  }
}

storage_account_reference = {
  "stg1" = {
    name                     = "staticwebsskstorage"
    location                 = "centralindia"
    resource_group_name      = "static-resource-container-001"
    account_replication_type = "LRS"
    account_tier             = "Standard"
  }
}
