resource "azurerm_virtual_network" "thisvnet" {
  name                = var.vnet_name
  resource_group_name = var.resource_group_name
  location            = var.location
  address_space       = var.address_space
}

variable "location" {
}

variable "resource_group_name" {
}
