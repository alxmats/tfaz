/*
resource "azurerm_resource_group" "myrg1" {
  name      = var.rg1_name
  location  = "westeurope"
  tags      = local.common_tags
}

resource "azurerm_resource_group" "myrg2" {
  name      = var.rg2_name
  #name      = "rg-${local.resource_sfx}"
  location  = "westeurope"
  tags      = local.common_tags
}
*/

resource "azurerm_resource_group" "myrg" {
  for_each = toset(local.env_list)
  
  name      = "rg-aliaks-mats-${each.key}"
  location  = "westeurope"
  
  tags      = {
    name_surname = "aliaksandr_matskevich"
    environment  = "${each.key}"
        
  }
}
