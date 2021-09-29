resource "azurerm_lb_backend_address_pool" "user27-bpepool" {
    loadbalancer_id = azurerm_lb.user27-lb.id
    name = "user27-BackEndAddressPool"
}
