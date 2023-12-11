resource "azurerm_virtual_network" "example" {
  name                = var.prefix
  address_space       = ["10.0.0.0/16"]
  location            = "East US 2"
  resource_group_name = azurerm_management_group.shared.outputs.resource_group_name
}

output "virtual_network_id" {
  description = "ID de la Red Virtual"
  value       = azurerm_virtual_network.example.id
}
