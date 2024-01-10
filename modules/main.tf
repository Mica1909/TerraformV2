provider "azurerm" {
  features = {}
}
module "my_resource_group" {
  source            = "./rg"  # Ruta al directorio de tu módulo
  resource_group_name = "example-rg"
  location          = "East US"
}

