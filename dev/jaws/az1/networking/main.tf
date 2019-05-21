provider "aws" {
  region = "${var.region}"
}

terraform {
  backend "s3" {
    bucket = "jaws-az1-networking"
    key    = "terraform.tfstate"
    region = "us-east-1"
  }
}

data "terraform_remote_state" "jaws-vpc-creation" {
  backend = "s3"

  config {
    bucket = "jaws-vpc-creation"
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

variable "jaws_vpc_public_subnet_1" {}
variable "jaws_vpc_intra_subnet_1" {}
variable "jaws_vpc_private_subnet_1" {}
variable "tag_owner" {}
variable "availability_zone" {}
variable "region" {}
