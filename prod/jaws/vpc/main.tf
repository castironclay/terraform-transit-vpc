provider "aws" {
  region = "${var.region}"
}

terraform {
  backend "s3" {
    bucket  = "jaws-vpc-creation"
    key     = "terraform.tfstate"
    region  = "us-east-1"
    encrypt = "True"
  }
}

module "jaws_vpc" {
  source = "../../../modules/networking/vpc"

  vpc_cidr  = "${var.jaws_vpc}"
  tag_name  = "JAWS VPC"
  tag_owner = "${var.tag_owner}"
}

module "jaws_igw" {
  source = "../../../modules/networking/igw"

  tag_name  = "JAWS IGW"
  tag_owner = "ISP"
  vpc_id    = "${module.jaws_vpc.vpc_id}"
}

variable "jaws_vpc" {}
variable "tag_owner" {}
variable "key_name" {}
variable "region" {}
