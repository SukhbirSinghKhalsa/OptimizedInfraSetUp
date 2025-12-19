variable "sql_database_reference" {
  type = map(object({
      name         = string
  collation    = string
  license_type = string
  }))
}