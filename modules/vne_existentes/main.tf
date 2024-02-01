# En el código fuente de tu módulo

resource "azurerm_virtual_network" "existing_vnet" {
  name                = var.vnet_name
  address_space       = ["10.200.128.0/23"]  # Ajusta según la configuración de tu VNet existente
}

resource "azurerm_subnet" "existing_subnet" {
  name                 = var.subnet_name
  # resource_group_name  = var.resource_group_name  # Si es necesario para la subred, pero no para la VNet
  virtual_network_name = azurerm_virtual_network.existing_vnet.name
  address_prefixes     = var.subnet_address_prefixes
}

# Otra configuración para la VNet y la subred existentes...
