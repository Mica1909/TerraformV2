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
  resource_group_name = "state-demo"
  depends_on = [azurerm_resource_group.main]
}

resource "azurerm_resource_group" "state-demo-secure" {
  name     = "state-demo"
  location = "eastus"
}

output "vnet_id" {
  value = module.vnet.vnet_id
}

