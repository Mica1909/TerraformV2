# Archivo variables.tf dentro del directorio "resource_group"
variable "resource_group_name" {
  description = "Nombre del grupo de recursos."
}

variable "location" {
  description = "Ubicación del grupo de recursos."
  default     = "East US"
}
