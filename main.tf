module "vnet" {
  source              = "./modules/vnet"  # Ruta local al directorio del módulo
  resource_group_name = "Vnet-Produccion"
  location            = "East US"
  vnet_name           = "LandingZone"
  address_space       = ["10.0.0.0/16"]
  tags                = {
    environment = "production"
  }
}
