resource "azurerm_resource_group" "example" {
  name     = var.resource_group_name
  location = var.location
}

resource "azurerm_network_security_group" "example" {
  name                = var.network_security_group_name
  location            = azurerm_resource_group.example.location
  resource_group_name = azurerm_resource_group.example.name
}

resource "azurerm_virtual_network" "example" {
  name                = var.virtual_network_name
  location            = azurerm_resource_group.example.location
  resource_group_name = azurerm_resource_group.example.name
  address_space       = var.virtual_network_address_space
  dns_servers         = var.virtual_network_dns_servers

  subnet {
    name           = var.subnet1_name
    address_prefix = var.subnet1_address_prefix
    security_group = azurerm_network_security_group.example.id
  }

  subnet {
    name           = var.subnet2_name
    address_prefix = var.subnet2_address_prefix
    security_group = azurerm_network_security_group.example.id
  }

  tags = {
    environment = "Production"
  }
}


# resource "azurerm_resource_group" "example" {
#   name     = "ResourceGroup2"
#   location = "East US"
# }

# resource "azurerm_network_security_group" "example" {
#   name                = "SecurityGroup2"
#   location            = azurerm_resource_group.example.location
#   resource_group_name = azurerm_resource_group.example.name
# }

# resource "azurerm_virtual_network" "example" {
#   name                = "example-network1"
#   location            = azurerm_resource_group.example.location
#   resource_group_name = azurerm_resource_group.example.name
#   address_space       = ["10.0.0.0/16"]
#   dns_servers         = ["10.0.0.4", "10.0.0.5"]

#   subnet {
#     name           = "subnet1"
#     address_prefix = "10.0.1.0/24"
#     security_group = azurerm_network_security_group.example.id
#   }

#   subnet {
#     name           = "subnet2"
#     address_prefix = "10.0.2.0/24"
#     security_group = azurerm_network_security_group.example.id
#   }

#   tags = {
#     environment = "Production"
#   }
# }