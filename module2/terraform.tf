terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 2.65"
      configuration_aliases = [ azurerm.separate_sub ]
    }
  }

  required_version = ">= 0.14.9"
}