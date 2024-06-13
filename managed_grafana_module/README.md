# MANAGED GRAFANA

-----------------------------------------------------------

Resource 1: **"aws_iam_role" ** => This create an IAM role. It is used by the Amazon Grafana Service to access other AWS resources.
**"assume_role_policy"** => This defines the policy document that specifies who can assume the IAM role.
**"Version"** => sets the version of the IAM policy document.
**"Statement"** => This array contains one or more policy statements.
**"Action"** => This specifies the IAM action that is allowed in the statement.
**"Effect"** => THis specifies that the effect of this statement is to "Allow" the action to be performed.
**"Sid"** => THis sets the optional Statement ID.
**"Principal"** => This block defines the principal that is allowed to assume the IAM role.

---------------------------------------------------------------------------

Resource 2: **"aws_iam_policy"** => This policy is attached to the IAM role to grant the necessary permissions for the Amazon Grafana service to access CloudWatch.
This policy block grants the necessary permissions for the Amazon Grafana service to read metrics and logs from CLoudWatch.

----------------------------------------------------------------------------

Resource 3: **"aws_iam_role_policy_attachment"** => THis allows the Amazon Grafana service to access CloudWatch using the permissions defined in the policy.

--------------------------------------------------------------------------

Resource 4: **"aws_grafana_workspace"** => This resource creates an Amazon Grafana workspace.
**"name"** => This sets the name of the Grafana workspace.
**"account_access_type"** => This determines the AWS accounts that the GRafana workspace can be accessed from.
**"authentication_providers"** => THis specifies the authentication providers that the Grafana workspace will use.
**"permission_type"** => This determines how the permissions for the Grafana workspace are managed.
**"role_arn"** => This specifies the ARN of the IAM role that the GRafana workspace will use to access other AWS resources.
**"data_sources"** => THis specifies the data sources that the GRafana workspace use.

-------------------------------------------------------------------------

Resource 5 : **"aws_grafana_role_association"** => THis resource is used to associate a user with a specific role in an Amazon Grafana workspace.

}
