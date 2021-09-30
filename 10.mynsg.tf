resource "azurerm_network_security_group" "mynsg" {
    name                = "myNetworkSecurityGroup"
    location            = azurerm_resource_group.user27-rg.location
    resource_group_name = azurerm_resource_group.user27-rg.name
    
    security_rule {
        name                       = "SSH"
        priority                   = 1001
        direction                  = "Inbound"
        access                     = "Allow"
        protocol                   = "Tcp"
        source_port_range          = "*"
        destination_port_range     = "22"
        source_address_prefix      = "58.224.211.202"    
        destination_address_prefix = "*"
    }
    security_rule {
        name                       = "SSH-Jenkins"
        priority                   = 1002
        direction                  = "Inbound"
        access                     = "Allow"
        protocol                   = "Tcp"
        source_port_range          = "*"
        destination_port_range     = "22"
        source_address_prefix      = "58.224.211.202"   #Jenkins IP 넣어야 함   
        destination_address_prefix = "*"
    }   
    security_rule {
        name                       = "HTTP"
        priority                   = 2001
        direction                  = "Inbound"
        access                     = "Allow"
        protocol                   = "Tcp"
        source_port_range          = "*"
        destination_port_range     = "80"
        source_address_prefix      = "*"
        destination_address_prefix = "*"
    }

    tags = {
        environment = "Terraform Demo"
    }
}
