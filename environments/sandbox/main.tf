module "resource_group" {
  source = "../../modules/resource_groups"
  resource_group_reference = var.resource_group_reference
}

module "storage_account" {
  source = "../../modules/storage_accounts"
  storage_account_reference = var.storage_account_reference
}