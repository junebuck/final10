resource "azurerm_subnet" "user27-subnet1" {
    name = "user27-mysubnet1"
    resource_group_name = azurerm_resource_group.user27-rg.name
    virtual_network_name = azurerm_virtual_network.user27-net.name
    address_prefixes = ["40.0.1.0/24"]
}
