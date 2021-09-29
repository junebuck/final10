resource "azurerm_resource_group" "user27-rg" {
    name     = "user27rg"
    location = "koreacentral"

    tags = {
        environment = "Terraform Demo"
    }
}
