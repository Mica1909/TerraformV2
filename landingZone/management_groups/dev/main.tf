resource "azurerm_management_group" "example" {
  name        = "${var.prefix}-${var.environment}-mg"
  display_name = "${var.prefix}-${var.environment} Management Group"
}

output "management_group_id" {
  description = "ID del Grupo de Administración"
  value       = azurerm_management_group.example.id
}
