

output "vnet_id" {
  description = "ID de la red virtual"
  value       = module.vnet.virtual_network_id
}

output "vnet_address_space" {
  description = "Espacio de direcciones de la red virtual"
  value       = module.vnet.virtual_network_address_space
}
