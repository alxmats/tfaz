resource "azurerm_resource_group" "myrg" {
  name      = "rg-aliaksandr-matskevich"
  location  = "westeurope"
  tags      = {
      name_surname = "aliaksandr_matskevich"
  }
}
