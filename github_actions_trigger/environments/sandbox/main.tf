module "resource_group" {
  source = "../../modules/resource_groups"
  resource_group_reference = var.resource_group_reference
}

module "storage_account" {
  depends_on = [ module.resource_group]
  source = "../../modules/storage_accounts"
  storage_account_reference = var.storage_account_reference

}

output "test_outputs" {
  value = module.resource_group.resource_group
}
