variable "ami_id" {
  description = "AMI for instance"
  default     = "ami-0298eacdaa04bda7d"
}

variable "key_name" {
  description = "SSH key"
}

variable "tag_owner" {
  description = "Owner tag value"
}

variable "instance_name" {
  description = "Name of instance in EC2"
}

variable "size" {
  description = "Size of instance"
  default     = "t2.medium"
}

variable "availability_zone" {
  description = "Availability zone of instance"
}

variable "subnet_id" {
  description = "Subnet ID for instance"
}

variable "security_group_id" {
  description = "Security group ID"
}

variable "private_ip" {
  description = "Private IP"
}

variable "delete_root_volume" {
  default     = "true"
  description = "Delete root volume of instance upon termination"
}

variable "allocate_public" {
  default     = "true"
  description = "Allocate public IP to instance upon creation"
}

variable "source_check" {
  default     = "false"
  description = "Disable source and destination check for instance to allow routing functions to work properly"
}

variable "monitoring" {
  default     = "true"
  description = "Enable cloudwatch monitoring by default"
}

variable "ssh_key" {
  description = "This is the location of your SSH private key"
}
