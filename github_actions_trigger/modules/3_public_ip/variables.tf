variable "pips" {
  type = map(object({
    name                = string
    location            = string
    resource_group_name = string
    allocation_method   = string
    zones               = optional(list(string))
    sku                 = optional(string)
    sku_tier            = optional(string)
    tags                = optional(map(string))
  }))
}