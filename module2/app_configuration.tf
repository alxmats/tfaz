resource "azurerm_app_configuration" "appcfg" {
  name                = "appc-aliaksandr-matskevich"
  resource_group_name = azurerm_resource_group.myrg.name
  location            = azurerm_resource_group.myrg.location
  sku                 = "free"

  tags = {
    name_surname = "aliaksandr_matskevich"
  }
 
  depends_on = [azurerm_resource_group.myrg]
}