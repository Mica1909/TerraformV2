# Archivo outputs.tf dentro del directorio "resource_group"
output "resource_group_id" {
  value = azurerm_resource_group.example.id
}
