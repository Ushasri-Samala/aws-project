# Network Security Group 


## Prerequisites 

->Terraform installed on your local machine
->Azure credentials configured on your local machine


## Resources Created

----> Resource: **"azurerm_resource_group"** => This resource creates an Azure Resource Group.
**"name"** => This sets the name of the resource group.
**"location"** => This sets the location of the resource group.


-----> Resource: **"azurerm_network_security_group"** => This resource creates an Azure Network Security Group(NSG).
**"resource_group_name"** => This sets the resource group where the NSG will be created to the same resource group as the one created earlier.
**"security_rule"** => This block defines a security rule for the NSG.

## Commands to run the application
--->terraform init => To initialize the Terraform working directory.
--->terraform plan => Plan the Terraform deployment.
--->terraform apply => Apply the Terraform deployment.
--->terraform destroy => To delete the created resources.
     
## OUtput 
Successfully added Resources.




