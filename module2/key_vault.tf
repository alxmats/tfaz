resource "azurerm_key_vault" "mykv" {
  provider = azurerm.separate_sub
      
  tenant_id                   = "b41b72d0-4e9f-4c26-8a69-f949f367c91d"
  name                        = "kv-aliaksandr-matskevich"
  resource_group_name         = azurerm_resource_group.myrg.name
  location                    = azurerm_resource_group.myrg.location
  sku_name                    = "standard"
  
  tags = {
      name_surname = "aliaksandr_matskevich"
  }
  #soft_delete_retention_days  = 7
  #enabled_for_disk_encryption = true
  #purge_protection_enabled    = false
 
  
  depends_on = [azurerm_resource_group.myrg]
}