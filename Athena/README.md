# Athena


## Prerequisites 

->Terraform installed on your local machine
->AWS credentials configured on your local machine

## Resources Created

---> Resource 1:**"aws_athena_database"**: It represents an Amazon Athena database. The resource is given the name "example1".
                  **"name"** => It sets the name of the Athena database.
                  **"bucket"** => It sets the s3 bucket that will be used to store the data for the Athena database.
                  
-----> Resource 2:**"aws_athena_workgroup":** This resource creates an Amazon Athena workgroup.
                  **"name"** => It sets the name of the Athena workgroup.
                  **"description"** => IT sets the description of the Athena workgroup.
                  **"state"** => This sets the state of the Athena workgroup, here the workgroup is created and enabled.

## Commands 
->terraform init => To initialize the Terraform working directory.
->terraform plan => Plan the Terraform deployment.
->terraform apply => Apply the Terraform deployment.
->terraform destroy => To delete the created resources.
     

