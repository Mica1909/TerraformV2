# outputs.tf

output "vnet_id" {
  description = "ID de la red virtual"
  value       = module.network.vnet_id
}

output "vnet_address_space" {
  description = "Espacio de direcciones de la red virtual"
  value       = module.network.vnet_address_space
}
