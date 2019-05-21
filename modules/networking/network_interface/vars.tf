variable "interface_subnet_id" {
  description = "The subnet id of the subnet"
}

variable "interface_security_group_id" {
  description = "The security group assigned to the interface"
}

variable "source_check" {
  default     = "false"
  description = "Set source/destination check to false to allow for routing"
}

variable "private_ip" {
  description = "Private IP of the interface"
}

variable "tag_owner" {
  description = "Owner tag of the interface"
}

variable "interface_name" {
  description = "Name tag of the interface"
}
