resource "azurerm_lb_probe" "user27-lb-probe" {
    resource_group_name = azurerm_resource_group.user27-rg.name
    loadbalancer_id = azurerm_lb.user27-lb.id
    name = "http-probe"
    protocol = "Http"
    request_path = "/"
    port = 80
}
