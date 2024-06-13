
variable "resource_group_name" {
  description = "Name of the resource group"
  type        = string
}

variable "location" {
  description = "Location of the resources"
  type        = string
}

variable "network_security_group_name" {
  description = "Name of the network security group"
  type        = string
}

variable "security_rule_name" {
  description = "Name of the security rule"
  type        = string
}

variable "security_rule_priority" {
  description = "Priority of the security rule"
  type        = number
}

variable "security_rule_direction" {
  description = "Direction of the security rule"
  type        = string
}

variable "security_rule_access" {
  description = "Access of the security rule"
  type        = string
}

variable "security_rule_protocol" {
  description = "Protocol of the security rule"
  type        = string
}

variable "security_rule_source_port_range" {
  description = "Source port range of the security rule"
  type        = string
}

variable "security_rule_destination_port_range" {
  description = "Destination port range of the security rule"
  type        = string
}

variable "security_rule_source_address_prefix" {
  description = "Source address prefix of the security rule"
  type        = string
}

variable "security_rule_destination_address_prefix" {
  description = "Destination address prefix of the security rule"
  type        = string
}