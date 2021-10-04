variable client_secret {
  default = "ncq7Q~rIg3R4i6~gOjN63D8vmIOv69wGGjK1l"
}

provider "azurerm" {
  features {}
        
  subscription_id = "97e895bf-0112-4294-8e8b-e5ad0401b6da"
  client_id       = "3d9551f2-3d6d-4fda-858d-1e27ca0cda43"
  tenant_id       = "b41b72d0-4e9f-4c26-8a69-f949f367c91d"
  client_secret = var.client_secret
}

provider "azurerm" {
  features {}
  alias = "separate_sub"
    
  subscription_id = "97e895bf-0112-4294-8e8b-e5ad0401b6da"
  client_id       = "3d9551f2-3d6d-4fda-858d-1e27ca0cda43"
  tenant_id       = "b41b72d0-4e9f-4c26-8a69-f949f367c91d"
  client_secret = var.client_secret
}

#client_secret = ncq7Q~rIg3R4i6~gOjN63D8vmIOv69wGGjK1l