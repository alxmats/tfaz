terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 2.65"
      configuration_aliases = [ azurerm.separate_sub ]
    }
  }
  
  backend "azurerm" {
    resource_group_name  = "rg-terraform-state"
    storage_account_name = "satfstatealxmats"
    container_name       = "tfstatecontainer"
    key                  = "terraform.tfstate"
  }

  required_version = ">= 0.14.9"
}



