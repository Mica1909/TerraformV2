# main.tf

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
