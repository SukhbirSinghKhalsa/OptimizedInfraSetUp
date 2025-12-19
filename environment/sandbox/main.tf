module "resource_group" {
  source = "../../module/resource_group"
  resource_group_var     = var.rg
}

module "vnetsubnet" {
  depends_on = [module.resource_group]
  source     = "../../module/networking"
  virtual_network_reference    = var.network
}

module "pubip" {
  depends_on = [module.vnetsubnet]
  source     = "../../module/public_ip"
  public_ip_reference         = var.ip
}

module "vm" {
  depends_on = [module.pubip]
  source     = "../../module/compute"
  linux_virtual_machine_reference      = var.linux
}

module "server" {
  depends_on = [module.resource_group]
  source     = "../../module/sql_server"
  sqlserver_reference  = var.sqlserver
}

module "database" {
  depends_on   = [module.server]
  source       = "../../module/sql_database"
  sql_database_reference = var.sql_database
}
