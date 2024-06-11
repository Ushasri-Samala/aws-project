
variable "aws_region" {
  description = "AWS region to create resources in"
  type        = string
}

variable "neptune_cluster_name" {
  description = "Name of the Neptune cluster"
  type        = string
}

variable "neptune_cluster_instance_count" {
  description = "Number of Neptune cluster instances"
  type        = number
}

variable "neptune_cluster_instance_class" {
  description = "Instance class for the Neptune cluster instances"
  type        = string
}

variable "neptune_cluster_parameter_group_name" {
  description = "Name of the Neptune cluster parameter group"
  type        = string
}

variable "neptune_backup_retention_period" {
  description = "Backup retention period for the Neptune cluster"
  type        = number
}

variable "neptune_preferred_backup_window" {
  description = "Preferred backup window for the Neptune cluster"
  type        = string
}