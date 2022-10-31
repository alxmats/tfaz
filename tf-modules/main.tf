terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 3.27.0"
    }
  }
}

provider "azurerm" {
  features {}
}

variable "location" {
  type    = string
  default = "centralus"
}

variable "rg_name" {
  type    = string
  default = "rg-test"
}

module "vnet" {
  source              = "./vnet"
  resource_group_name = var.rg_name
  location            = var.location
  depends_on = [
    module.rg
  ]
}

module "rg" {
  source              = "./rg"
  resource_group_name = var.rg_name
  location            = var.location
}
