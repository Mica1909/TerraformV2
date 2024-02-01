# modules/vne_existentes/main.tf

variable "vnet_name" {
  description = "The name of the existing VNET"
}

variable "subnet_name" {
  description = "The name of the existing subnet"
}

resource "azurerm_virtual_network" "existing" {
  name                = var.vnet_name
  resource_group_name = var.resource_group_name
}

resource "azurerm_subnet" "existing" {
  name                 = var.subnet_name
  resource_group_name  = var.resource_group_name
  virtual_network_name = azurerm_virtual_network.existing.name
}