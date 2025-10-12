resource "azurerm_resource_group" "resource_group" {
  for_each = var.resource_group_reference
  name = each.value.name
  location = each.value.location
  managed_by = each.value.managed_by
  tags = each.value.tags
}