# Virtual Network 

---> Resource: **"azurerm_resource_group"** => This resource creates an Azure Resource Group.
**"name"** => This sets the name of the resource group.
**"location"** => This sets the location of the resorce group.


-----> Resource: **"azurerm_network_security_group"** => This resource creates an Azure Network Security Group(NSG).
**"name"** => This sets the name of the NSG.
**"location"** => This sets the location of the NSG to the same location as the resource group.
**"resource_group_name"** => This sets the resource group where the NSG will be created to the same resource group as the one created earlier.


-----> Resource: **"azurerm_virtual_network"** => This resource creates an Azure Virtual Network.
**"name"** => This sets the name of the virtual network.
**"location"** => This sets the location of the virtual network to the same location as the resource group.
**"address_space"** => This sets the address space of the virtual network.
**"dns_servers"** => This sets the DNS servers for the virtual network.
--> **"subnet"** => This defines the subnets within the virtual network.
**"name"** => This sets the name of the subnet.
**"address_prefix"** => This sets the address prefix of the subnet..
**"security_group"** => This associates the subnet with the network security group created earlier.
