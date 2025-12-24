variable "stgs" {
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

variable "commons_from_resource_group" {}
