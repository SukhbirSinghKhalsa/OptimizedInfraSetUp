variable "keys" {
  type = map(object({
    kv_name                       = string
    location                      = string
    resource_group_name           = string
    sku_name                      = string
    purge_protection_enabled      = optional(bool)
    public_network_access_enabled = optional(bool)
    soft_delete_retention_days    = optional(number)
    tags                          = optional(map(string))
  }))
}
