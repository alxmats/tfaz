provider "azurerm" {
  features {}
        
  subscription_id = var.subscription_id
  client_id       = var.client_id
  tenant_id       = var.tenant_id
  client_secret   = var.client_secret
}

provider "azurerm" {
  features {}
  alias = "separate_sub"
    
  subscription_id = var.subscription_id
  client_id       = var.client_id
  tenant_id       = var.tenant_id
  client_secret   = var.client_secret
}

#client_secret = ncq7Q~rIg3R4i6~gOjN63D8vmIOv69wGGjK1l