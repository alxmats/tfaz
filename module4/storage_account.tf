

resource "azurerm_storage_account" "stacc" {
  for_each = toset(local.env_list)
  
  resource_group_name      = azurerm_resource_group.myrg[each.key].name
  location                 = azurerm_resource_group.myrg[each.key].location
  account_tier             = "Standard"
  account_replication_type = "LRS"  
  
  # Storage account name constructing:
  # checking environment name
  # deleting _
  # checking resulting name length with fallback names "stdevelopdev" or "sttestqa"
  name = each.key == "dev" ? length("stdev${ join("", split("_", local.name_surname) ) }${each.key}") <= 24 ? "stdev${ join("", split("_", local.name_surname) ) }${each.key}" : "stdevelopdev" : length("sttest${ join("", split("_", local.name_surname) ) }${each.key}") <= 24 ? "sttest${ join("", split("_", local.name_surname) ) }${each.key}" : "sttestqa"
  
  tags      = {
    name_surname = "aliaksandr_matskevich"
    environment  = "${each.key}"
        
  }
}
