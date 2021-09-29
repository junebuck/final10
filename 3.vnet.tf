resource "azurerm_virtual_network" "user27-net" {
    name = "user27-vnet"
    address_space = ["40.0.0.0/16"]
    location = azurerm_resource_group.user27-rg.location
    resource_group_name = azurerm_resource_group.user27-rg.name
}
