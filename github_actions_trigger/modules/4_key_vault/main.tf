data "azurerm_client_config" "current" {}

resource "azurerm_key_vault" "key_vault" {
  for_each            = var.keys
  name                = each.value.kv_name
  location            = each.value.location
  resource_group_name = each.value.resource_group_name
  sku_name            = each.value.sku_name
  tenant_id           = data.azurerm_client_config.current.tenant_id
  access_policy {
    tenant_id           = data.azurerm_client_config.current.tenant_id
    object_id           = data.azurerm_client_config.current.object_id
    key_permissions     = ["Create", "Get"]
    secret_permissions  = ["Set", "Get", "Delete", "Purge", "Recover", "List"]
    storage_permissions = ["Get"]
  }
  purge_protection_enabled      = each.value.purge_protection_enabled
  public_network_access_enabled = each.value.public_network_access_enabled
  soft_delete_retention_days    = each.value.soft_delete_retention_days
  tags                          = each.value.tags
}

