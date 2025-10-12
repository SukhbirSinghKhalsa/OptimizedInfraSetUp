variable "resource_group_reference" {
  type = map(object({
    name       = string
    location   = string
    managed_by = optional(string)
    tags = optional(map(string), {
      environment = "sandbox",
      project     = "static-website"
    })
  }))
}

variable "storage_account_reference" {
  type = map(object({
    name                     = string
    location                 = string
    resource_group_name      = string
    account_tier             = string
    account_replication_type = string
    tags = optional(map(string), {
      environment = "sandbox",
      project     = "static-website"
    })
  }))
}
