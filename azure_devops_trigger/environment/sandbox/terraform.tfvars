rg = {
  rg1 = {
    name     = "ssk-inc-sandbox-rg"
    location = "Central India"
  }
}

network = {
  network1 = {
    name                = "ssk-inc-sandbox-vnet"
    location            = "Central India"
    resource_group_name = "ssk-inc-sandbox-rg"
    subnet = {
      subnet1 = {
        name             = "ssk-inc-sandbox-subnet1"
        address_prefixes = ["10.0.1.0/24"]
      }
      subnet2 = {
        name             = "ssk-inc-sandbox-subnet2"
        address_prefixes = ["10.0.2.0/26"]
      }
    }
  }
}

ip = {
  ip1 = {
    name                = "ssk-inc-sandbox-pip1"
    resource_group_name = "ssk-inc-sandbox-rg"
    location            = "Central India"
  }
}

linux = {
  linux1 = {
    vmname              = "ssk-inc-sandbox-rgvm"
    resource_group_name = "ssk-inc-sandbox-rg"
    location            = "Central India"
    size                = "Standard_F2"
    nicname             = "ssk-inc-sandbox-nic"
    ip_configuration = {
      ip_configuration1 = {
        name                          = "sskipconfiguration"
        private_ip_address_allocation = "Dynamic"
      }
    }
  }
}

sqlserver = {
  sqlserver1 = {
    name                         = "ssksqlserverr"
    resource_group_name          = "ssk-inc-sandbox-rg"
    location                     = "centralindia"
    administrator_login          = "ssk@admin"
    administrator_login_password = "AdminE#JEJ2eu"
  }
}

sql_database = {
  sql_database1 = {
    name         = "ssksqldatabase"
    collation    = "SQL_Latin1_General_CP1_CI_AS"
    license_type = "LicenseIncluded"
  }
}