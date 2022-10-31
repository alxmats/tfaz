
variable "resource_group_name" {
  type    = string
  default = "testgroup"
}

variable "location" {
  type    = string
  default = "westeurope"
}

resource "azurerm_resource_group" "thisrg" {
  name     = var.resource_group_name
  location = var.location
}
