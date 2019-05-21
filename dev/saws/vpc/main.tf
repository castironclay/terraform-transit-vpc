provider "aws" {
  region = "${var.region}"
}

terraform {
  backend "s3" {
    bucket  = "saws-vpc-creation"
    key     = "terraform.tfstate"
    region  = "us-east-1"
    encrypt = "True"
  }
}

# Define SAWS VPC
module "saws_vpc" {
  source = "../../../modules/networking/vpc"

  vpc_cidr  = "${var.saws_vpc}"
  tag_name  = "SAWS VPC"
  tag_owner = "${var.tag_owner}"
}

module "saws_vpc_igw" {
  source = "../../../modules/networking/igw"

  tag_name  = "SAWS IGW"
  tag_owner = "${var.tag_owner}"
  vpc_id    = "${module.saws_vpc.vpc_id}"
}

variable "saws_vpc" {}
variable "tag_owner" {}
variable "key_name" {}
variable "region" {}
