// examples/main.tf

provider "azurerm" {
  features = {}
}

module "vpn" {
  source = "../modules/vpn"

  resource_group_name         = "example-rg"
  vnet_name                   = "example-vnet"
  local_network_gateway_name  = "example-local-gateway"
  shared_key                  = "YourSharedKey"
  public_ip_name              = "example-public-ip"
  connection_name             = "example-connection"
  location                    = "East US"
  virtual_network_gateway_name = "example-vnet-gw"
}
