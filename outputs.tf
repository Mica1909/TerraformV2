# outputs.tf

output "vnet_id" {
  description = "ID de la red virtual"
  value       = module.vnet.id  # Modificado a "id" en lugar de "virtual_network_id"
}

output "vnet_address_space" {
  description = "Espacio de direcciones de la red virtual"
  value       = module.vnet.address_space  # Modificado a "address_space"
}
