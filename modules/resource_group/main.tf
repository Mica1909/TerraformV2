# main.tf

variable "resource_group_name" {
  description = "Nombre del grupo de recursos"
}

variable "location" {
  description = "Región de Azure"
}

resource "azurerm_resource_group" "main" {
  name     = var.resource_group_name
  location = var.location
}

output "resource_group_id" {
  value = azurerm_resource_group.main.id
}
