data "azurerm_subnet" "as" {
  name                 = "ssk-inc-sandbox-subnet1" 
  virtual_network_name = "ssk-inc-sandbox-vnet"
  resource_group_name  = "ssk-inc-sandbox-rg"
}