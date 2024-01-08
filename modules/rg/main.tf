# Archivo main.tf dentro del directorio "resource_group"
provider "azurerm" {
  features = {}
}

resource "azurerm_resource_group" "example" {
  name     = var.resource_group_name
  location = var.location
}

