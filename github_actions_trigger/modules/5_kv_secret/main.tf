data "azurerm_key_vault" "key_vault" {
  for_each            = var.secrets
  name                = each.value.kv_name
  resource_group_name = each.value.resource_group_name
}

resource "azurerm_key_vault_secret" "key_vault_secret" {
  for_each         = var.secrets
  name             = each.value.secret_name
  value            = each.value.secret_value
  value_wo         = each.value.secret_value_wo
  value_wo_version = each.value.secret_value_wo_version
  key_vault_id     = data.azurerm_key_vault.key_vault[each.key].id
  content_type     = each.value.content_type
  not_before_date  = each.value.not_before_date
  expiration_date  = each.value.expiration_date
  tags             = each.value.tags
}

data.azurerm_key_vault.key_vault.id

                                      each.key
data "azurerm_key_vault" "key_vault" [secret1] {
    name             = "ssk-inc-sandbox-keyvault"
    resource_group_name = "ssk-inc-sandbox-rg"
}
                                      each.key
data "azurerm_key_vault" "key_vault" [secret2] {
    name             = "ssk-inc-sandbox-kv2"
    resource_group_name = "ssk-inc-sandbox-rg"
}


# data block --  jo already chize cloud pe bani hue ha uski value fetch karo
variable "kv_name"{}
variable "resource_group_name"{}
variable "secret_name"{}
variable "secret_value"{}

data "azurerm_key_vault" "key_vault" {
  name                = var.kv_name
  resource_group_name = var.resource_group_name
}

resource "azurerm_key_vault_secret" "key_vault_secret" { 
  name             = var.secret_name
  value            = var.secret_value
  key_vault_id     = data.azurerm_key_vault.key_vault.id
}