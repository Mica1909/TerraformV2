# main.tf

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

module "vne_existentes" {
  source              = "./modules/vne_existentes"
  resource_group_name = "int-dev-test"
  vnet_name           = "arsa-dev-test-vnet"
  subnet_name         = "arsa-dev-test-subnet"
}

module "vm" {
  source              = "./modules/vm"
  resource_group_name = "myResourceGroup"
  location            = "East US"
  subnet_id           = module.network.azurerm_subnet.existing.id
}
