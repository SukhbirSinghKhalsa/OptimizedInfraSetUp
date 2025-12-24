variable "secrets" {
  type = map(object({
    kv_name                 = string
    resource_group_name     = string
    secret_name             = string
    secret_value            = optional(string)
    secret_value_wo         = optional(string)
    secret_value_wo_version = optional(number)
    content_type            = optional(string)
    not_before_date         = optional(string)
    expiration_date         = optional(string)
    tags                    = optional(map(string))
  }))
}
