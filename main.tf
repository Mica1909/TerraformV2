# main.tf

provider "azurerm" {
  features = {}
}

module "vnet" {
  source = "./modules/vnet_module"

  vnet_name          = "my-vnet"
  address_space      = ["10.0.0.0/16"]
  location           = "East US"
  resource_group_name = "my-resource-group"
}

output "vnet_id" {
  value = module.vnet.vnet_id
}

