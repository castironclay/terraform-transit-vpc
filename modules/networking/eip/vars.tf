variable "tag_owner" {
  description = "Value for owner tag"
}

variable "tag_name" {
  description = "Value for name tag"
}

variable "attach_vpc" {
  default     = "true"
  description = "Attach EIP to VPC by default"
}
