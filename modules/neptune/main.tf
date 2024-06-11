
provider "aws" {
  region = var.aws_region
}

resource "aws_neptune_cluster" "default1" {
  cluster_identifier                  = var.neptune_cluster_name
  engine                              = "neptune"

  availability_zones                  = ["${var.aws_region}a", "${var.aws_region}b"]
  
  backup_retention_period             = 5
  preferred_backup_window             = "07:00-09:00"
  skip_final_snapshot                 = true
  iam_database_authentication_enabled = true
  apply_immediately                   = true
  neptune_cluster_parameter_group_name = var.neptune_cluster_parameter_group_name
}

resource "aws_neptune_cluster_instance" "example1" {
  count              = var.neptune_cluster_instance_count
  cluster_identifier = aws_neptune_cluster.default1.id
  instance_class     = var.neptune_cluster_instance_class
  neptune_parameter_group_name = var.neptune_cluster_parameter_group_name
}
