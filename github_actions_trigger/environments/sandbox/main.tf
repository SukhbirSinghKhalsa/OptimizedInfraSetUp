module "resource_groups" {
  source = "../../modules/1_resource_groups"
  rgs    = var.resource_groups
}

module "storage_accounts" {
  source     = "../../modules/2_storage_accounts"
  stgs       = var.storage_accounts
  commons_from_resource_group = module.resource_groups.resource_group_output
  depends_on = [module.resource_groups]
}
/* 
module "public_ips" {
  source     = "../../modules/3_public_ip"
  pips       = var.public_ips
  depends_on = [module.resource_groups]
}

module "key_vaults" {
  source     = "../../modules/4_key_vault"
  keys       = var.key_vaults
  depends_on = [module.resource_groups]
}

module "key_vault_secrets"{
    key_vault_id = module.key_vault.keyvault_id
}


module "key_vault_secrets" {
  source     = "../../modules/5_kv_secret"
  secrets    = var.key_vault_secrets
  depends_on = [module.key_vaults]
}

output "key_vault_secret" {
  value = module.key_vault_secrets
}
 */