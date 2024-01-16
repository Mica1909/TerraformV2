terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~>3.0"
    }
  }
  backend "azurerm" {
      resource_group_name  = "tfstate"
      storage_account_name = "tfstatearsa"
      container_name       = "tfstate"
      key                  = "terraform.tfstate"
  }

}

provider "azurerm" {
  features {}
}

module "vnet" {
  source = "./modules/vnet_modules"

  vnet_name          = "my-vnet"
  address_space      = ["10.0.0.0/16"]
  location           = "East US"
  resource_group_name = "rg"
  depends_on = [module_rg]
}

module rg" {
  source              = "./modules/resource_group"
  resource_group_name = "rg"
  location            = "East US"
}

output "vnet_id" {
  value = module.vnet.vnet_id
}

output "resource_group_id" {
  value = module.rg.resource_group_id
}
