
resource "azurerm_app_configuration" "appcfg" {
  for_each            = toset(local.env_list)
  name                = "rg-aliaks-mats-${each.key}"
  
  resource_group_name = azurerm_resource_group.myrg[each.key].name
  location            = azurerm_resource_group.myrg[each.key].location
  sku                 = "free"

  tags      = {
    name_surname = "aliaksandr_matskevich"
    environment  = "${each.key}"
 }

  depends_on = [azurerm_resource_group.myrg]
}