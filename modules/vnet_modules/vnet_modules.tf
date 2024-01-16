# vnet_module.tf

variable "vnet_name" {
  description = "Nombre de la red virtual"
}

variable "address_space" {
  description = "Espacio de direcciones de la red virtual"
}

resource "azurerm_virtual_network" "main" {
  name                = var.vnet_name
  address_space       = var.address_space
  location            = var.location
  resource_group_name = var.resource_group_name
}

output "vnet_id" {
  value = azurerm_virtual_network.main.id
}
