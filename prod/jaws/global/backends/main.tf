# Configure S3 buckets for remote backend
provider "aws" {
  region = "${var.region}"
}

terraform {
  backend "s3" {
    bucket = "isp-jaws-root-backend"
    key    = "terraform.tfstate"
    region = "us-east-1"
  }
}

# JAWS S3 Backends
## AZ1
module "jaws-az1-iam" {
  source        = "../../../../modules/global/s3"
  bucket_region = "${var.region}"
  bucket_name   = "jaws-az1-iam"
  tag_owner     = "${var.tag_owner}"
}

module "jaws-az1-networking" {
  source        = "../../../../modules/global/s3"
  bucket_region = "${var.region}"

  bucket_name = "jaws-az1-networking"
  tag_owner   = "${var.tag_owner}"
}

module "jaws-az1-ec2" {
  source        = "../../../../modules/global/s3"
  bucket_region = "${var.region}"

  bucket_name = "jaws-az1-ec2"
  tag_owner   = "${var.tag_owner}"
}

## AZ2
module "jaws-az2-iam" {
  source        = "../../../../modules/global/s3"
  bucket_region = "${var.region}"

  bucket_name = "jaws-az2-iam"
  tag_owner   = "${var.tag_owner}"
}

module "jaws-az2-networking" {
  source        = "../../../../modules/global/s3"
  bucket_region = "${var.region}"

  bucket_name = "jaws-az2-networking"
  tag_owner   = "${var.tag_owner}"
}

module "jaws-az2-ec2" {
  source        = "../../../../modules/global/s3"
  bucket_region = "${var.region}"

  bucket_name = "jaws-az2-ec2"
  tag_owner   = "${var.tag_owner}"
}

# Global Backends
module "jaws-vpc-creation" {
  source        = "../../../../modules/global/s3"
  bucket_region = "${var.region}"

  bucket_name = "jaws-vpc-creation"
  tag_owner   = "${var.tag_owner}"
}

# Variables
variable "tag_owner" {}

variable "region" {}

