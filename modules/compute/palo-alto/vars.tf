variable "key_name" {
  description = "SSH key"
  default     = "ISP"
}

variable "tag_owner" {
  description = "Owner tag value"
  default     = "ISP"
}

variable "instance_name" {
  description = "Name of instance in EC2"
}

variable "size" {
  description = "Size of instance"
  default     = "m4.xlarge"
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
  description = "Private IP assigned to instance"
}

variable "user_data" {
  description = "User data for bootstrap"
}

variable "iam_instance_profile" {
  description = "IAM instance profile"
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
