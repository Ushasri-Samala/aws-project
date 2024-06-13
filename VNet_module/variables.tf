
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

variable "virtual_network_name" {
  description = "Name of the virtual network"
  type        = string
}

variable "virtual_network_address_space" {
  description = "Address space for the virtual network"
  type        = list(string)
}

variable "virtual_network_dns_servers" {
  description = "DNS servers for the virtual network"
  type        = list(string)
}

variable "subnet1_name" {
  description = "Name of the first subnet"
  type        = string
}

variable "subnet1_address_prefix" {
  description = "Address prefix for the first subnet"
  type        = string
}

variable "subnet2_name" {
  description = "Name of the second subnet"
  type        = string
}

variable "subnet2_address_prefix" {
  description = "Address prefix for the second subnet"
  type        = string
}