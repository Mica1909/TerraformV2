output "vnet_id" {
  value = azurerm_virtual_network.example.id
}

output "vnet_address_space" {
  value = azurerm_virtual_network.example.address_space
}
