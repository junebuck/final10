resource "azurerm_lb" "user27-lb" {
  name = "user27lb"
  location = azurerm_resource_group.user27-rg.location
  resource_group_name = azurerm_resource_group.user27-rg.name
  frontend_ip_configuration {
  name = "user27PublicIPAddress"
  public_ip_address_id = azurerm_public_ip.user27-publicip.id
 }
}
