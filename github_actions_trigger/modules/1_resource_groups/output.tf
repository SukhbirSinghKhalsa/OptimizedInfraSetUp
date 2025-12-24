output "resource_group_output" {
  value = {for k, v in azurerm_resource_group.resource_group : k => v}
}