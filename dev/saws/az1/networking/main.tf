provider "aws" {
  region = "${var.region}"
}

terraform {
  backend "s3" {
    bucket = "saws-az1-networking"
    key    = "terraform.tfstate"
    region = "us-east-1"
  }
}

data "terraform_remote_state" "saws-vpc-creation" {
  backend = "s3"

  config {
    bucket = "saws-vpc-creation"
    key    = "terraform.tfstate"
    region = "${var.region}"
  }
}

data "terraform_remote_state" "saws-jaws-peering" {
  backend = "s3"

  config {
    bucket = "saws-jaws-peering"
    key    = "terraform.tfstate"
    region = "${var.region}"
  }
}

variable "saws_vpc_public_subnet_1" {}
variable "saws_vpc_private_subnet_1" {}
variable "tag_owner" {}
variable "availability_zone" {}
variable "region" {}
