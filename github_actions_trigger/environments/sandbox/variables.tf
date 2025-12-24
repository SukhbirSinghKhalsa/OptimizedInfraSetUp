variable "resource_groups" {
  type = map(object({
    resource_group_name = string
    location            = string
    managed_by          = optional(string)
    tags                = optional(map(string))
  }))
}

variable "storage_accounts" {
  type = map(object({
    name                     = string
    rg_key                   = string
    account_kind             = optional(string)
    account_tier             = string
    account_replication_type = string
    identity = optional(list(object({
      type         = string
      identity_ids = optional(list(string))
    })))
    blob_properties = optional(list(object({
      versioning_enabled            = optional(bool)
      change_feed_enabled           = optional(bool)
      change_feed_retention_in_days = optional(number)
      default_service_version       = optional(string)
      last_access_time_enabled      = optional(bool)
      cors_rule = optional(list(object({
        allowed_headers    = list(string)
        allowed_methods    = list(string)
        allowed_origins    = list(string)
        exposed_headers    = list(string)
        max_age_in_seconds = number
      })))
    })))

  }))
}

# variable "public_ips" {
#   type = map(object({
#     name                = string
#     location            = string
#     resource_group_name = string
#     allocation_method   = string
#     zones               = optional(list(string))
#     sku                 = optional(string)
#     sku_tier            = optional(string)
#     tags                = optional(map(string))
#   }))
# }

# variable "key_vaults" {
#   type = map(object({
#     kv_name                       = string
#     location                      = string
#     resource_group_name           = string
#     sku_name                      = string
#     purge_protection_enabled      = optional(bool)
#     public_network_access_enabled = optional(bool)
#     soft_delete_retention_days    = optional(number)
#     tags                          = optional(map(string))
#   }))
# }

# variable "key_vault_secrets" {
#   type = map(object({
#     kv_name                 = string
#     resource_group_name     = string
#     secret_name             = string
#     secret_value            = optional(string)
#     secret_value_wo         = optional(string)
#     secret_value_wo_version = optional(number)
#     content_type            = optional(string)
#     not_before_date         = optional(string)
#     expiration_date         = optional(string)
#     tags                    = optional(map(string))
#   }))
# }

