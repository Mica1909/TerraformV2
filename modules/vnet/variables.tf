variable "resource_group_name" {
  description = "The name of the resource group where the VNet will be created."
}

variable "location" {
  description = "The Azure region where the resources will be deployed."
}

variable "vnet_name" {
  description = "The name of the VNet."
}

variable "address_space" {
  description = "The address space for the VNet."
  type        = list(string)
}

variable "tags" {
  description = "Tags to apply to the VNet."
  type        = map(string)
  default     = {}
}
