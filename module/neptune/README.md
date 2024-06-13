# NEPTUNE 


## Prerequisites 

->Terraform installed on your local machine
->AWS credentials configured on your local machine


## Resources Created

----> Resource 1 **"aws_neptune_cluster"** => This resource creates an Amazon Neptune database cluster.
**"cluster_identifier"** => This is the unique identifier for the Neptune Cluster.
**"availability_zones"** => This specifies the availability zones in which the Neptune cluster will be created.
**"backup_retention_period" and "preferred_backup_window"** => This control the automated backups for the Neptune Cluster.
**"skip_final_snapshot"** => This tells Terraform to skip taking a final snapshot of the Neptune cluster when the cluster is deleted.
**"iam_database_authentication_enabled"** => This enables or disables IAM database authentication for the Neptune cluster based on the provided value.

----> Resource 2 **"aws_neptune_cluster_instance"** => This resource creates one or more Neptune database cluster instances within the Neptune cluster.
**"count"** => This specifies the number of Neptune cluster instances to create.


## Commands to run the application
->terraform init => To initialize the Terraform working directory.
->terraform plan => Plan the Terraform deployment.
->terraform apply => Apply the Terraform deployment.
->terraform destroy => To delete the created resources.
     
## Output 
Successfully added Resources.

