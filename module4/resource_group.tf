
resource "azurerm_resource_group" "myrg" {
  for_each = toset(local.env_list)
  
  name      = "rg-aliaks-mats-${each.key}"
  location  = "westeurope"
  
  tags      = {
    name_surname = "aliaksandr_matskevich"
    environment  = "${each.key}"
        
  }
}

