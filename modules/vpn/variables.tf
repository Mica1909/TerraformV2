// modules/vpn/variables.tf

variable "resource_group_name" {
  description = "Nombre del grupo de recursos"
  type        = string
}

variable "vnet_name" {
  description = "Nombre de la red virtual"
  type        = string
}

variable "local_network_gateway_name" {
  description = "Nombre de la puerta de enlace de red local"
  type        = string
}

variable "shared_key" {
  description = "Clave compartida para la conexión VPN"
  type        = string
}

variable "public_ip_name" {
  description = "Nombre de la IP pública"
  type        = string
}

variable "connection_name" {
  description = "Nombre de la conexión VPN"
  type        = string
}

variable "location" {
  description = "Ubicación de recursos de Azure"
  type        = string
}

variable "virtual_network_gateway_name" {
  description = "Nombre de la puerta de enlace de red virtual"
  type        = string
}
