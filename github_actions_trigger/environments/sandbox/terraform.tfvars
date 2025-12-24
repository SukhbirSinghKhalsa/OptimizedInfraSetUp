resource_groups = {
  rg1 = {
    resource_group_name = "ssk-inc-sandbox-rg"
    location            = "Central India"
    tags = {
      environement = "sandbox"
      customer     = "self"
    }
  }
}

storage_accounts = {
  "stg1" = {
    name                     = "sskincsandboxstg1"
    account_tier             = "Standard"
    account_replication_type = "LRS"
    rg_key                   = "rg1"
  }
}

# public_ips = {
#   pip1 = {
#     name                = "ssk-inc-sandbox-pip1"
#     resource_group_name = "ssk-inc-sandbox-rg"
#     location            = "Central India"
#     allocation_method   = "Static"
#     tags = {
#       environement = "sandbox"
#       customer     = "self"
#     }
#   }
# }

# key_vaults = {
#   key1 = {
#     kv_name                       = "ssk-inc-sandbox-keyvault"
#     resource_group_name           = "ssk-inc-sandbox-rg"
#     location                      = "Central India"
#     sku_name                      = "standard"
#     rbac_authorization_enabled    = true
#     public_network_access_enabled = true
#     tags = {
#       environement = "sandbox"
#       customer     = "self"
#     }
#   }
# }

# key_vault_secrets = {
#   secret1 = {
#     kv_name             = "ssk-inc-sandbox-keyvault"
#     resource_group_name = "ssk-inc-sandbox-rg"
#     secret_name         = "API-KEY"
#     secret_value        = "xfgy647g7b7j7"
#     tags = {
#       environement = "sandbox"
#       customer     = "self"
#     }
#   }
#   secret2 = {
#     kv_name             = "ssk-inc-sandbox-kv2"
#     resource_group_name = "ssk-inc-sandbox-rg"
#     secret_name         = "API-KEY"
#     secret_value        = "xfgy647g7b7j7"
#     tags = {
#       environement = "sandbox"
#       customer     = "self"
#     }
#   }
# }

