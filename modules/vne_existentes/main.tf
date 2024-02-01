resource "azurerm_virtual_network" "existing_vnet" {
  location            = "eastus2"
  resource_group_name = "int-dev-test"
  name                = var.vnet_name
  address_space       = ["10.200.128.0/23"]
}

resource "azurerm_subnet" "existing_subnet" {
  name                 = var.subnet_name
  virtual_network_name = azurerm_virtual_network.existing_vnet.name
  address_prefixes     = var.subnet_address_prefixes
}


# Otra configuración para la VNet y la subred existentes...
