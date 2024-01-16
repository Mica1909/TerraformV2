# modules/vnet/main.tf

resource "azurerm_virtual_network" "vnet" {
  name                = "example-vnet"
  address_space       = ["10.0.0.0/16"]
  location            = "East US"
  resource_group_name = var.resource_group_name
}
