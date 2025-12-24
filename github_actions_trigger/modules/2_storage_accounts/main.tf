resource "azurerm_storage_account" "stg" {
  for_each                 = var.stgs
  name                     = each.value.name
  resource_group_name      = var.commons_from_resource_group[each.value.rg_key].name
  location                 = var.commons_from_resource_group[each.value.rg_key].location
  tags                     = var.commons_from_resource_group[each.value.rg_key].tags
  account_kind             = each.value.account_kind
  account_tier             = each.value.account_tier
  account_replication_type = each.value.account_replication_type
  dynamic "identity" {
    for_each = each.value.identity == null ? [] : each.value.identity
    content {
      type         = identity.value.type
      identity_ids = identity.value.identity_ids
    }
  }
  dynamic "blob_properties" {
    for_each = each.value.blob_properties == null ? [] : each.value.blob_properties
    content {
      versioning_enabled            = blob_properties.value.versioning_enabled
      change_feed_enabled           = blob_properties.value.change_feed_enabled
      change_feed_retention_in_days = blob_properties.value.change_feed_retention_in_days
      default_service_version       = blob_properties.value.default_service_version
      last_access_time_enabled      = blob_properties.value.last_access_time_enabled

      dynamic "cors_rule" {
        for_each = blob_properties.value.cors_rule == null ? [] : blob_properties.value.cors_rule
        content {
          allowed_headers    = cors_rule.value.allowed_headers
          allowed_methods    = cors_rule.value.allowed_methods
          allowed_origins    = cors_rule.value.allowed_origins
          exposed_headers    = cors_rule.value.exposed_headers
          max_age_in_seconds = cors_rule.value.max_age_in_seconds
        }
      }
    }
  }

}
