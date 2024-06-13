#GUARDDUTY 

## Prerequisites 

->Terraform installed on your local machine
->AWS credentials configured on your local machine

## Resources Created

----> Resource 1 : **"aws_instance"** => This resource creates an EC2 Instance.
**"ami and instance_type"** => This sets AMI and instance type for the EC2 instance.

-----> Resource 2: **"aws_guardduty_detector"** => This resource creates a GuardDuty detector which is a security service that continuously monitors our AWS environment for malicious activity and unauthorized behaviour. 
**"enable"** => setting this true means the detector will be enabled.

-----> Resource 3: **"aws_guardduty_organization_admin_account"** => This resource is responsible for setting up the GuardDuty organization admin account.
**"admin_account_id"** => This sets to the account ID of the current AWS account.

-----> Resource 4: **"aws_guardduty_organization_configuration"** => This resource is responsible for configuring GuardDuty at the organizational level.

------> DataSource: **"aws_caller_identity"** => This data source retrieves information about the current AWS account, including the account ID.


## Commands to run the application
->terraform init => To initialize the Terraform working directory.
->terraform plan => Plan the Terraform deployment.
->terraform apply => Apply the Terraform deployment.
->terraform destroy => To delete the created resources.
     
## Output 
Successfully added Resources.

