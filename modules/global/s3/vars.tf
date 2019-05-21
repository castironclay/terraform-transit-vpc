variable "tag_owner" {
  description = "Owner tag"
}

variable "bucket_name" {
  description = "Bucket name"
}

variable "bucket_region" {
  description = "Region location of bucket"
}

variable "versioning" {
  default     = "true"
  description = "Enable versioning by default"
}

variable "force_destroy" {
  default     = "True"
  description = "Forces the emptying of the bucket during deletion to avoid errors"
}
