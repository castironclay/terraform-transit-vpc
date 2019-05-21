provider "aws" {
  region = "${var.region}"
}

terraform {
  backend "s3" {
    bucket = "saws-az2-ec2"
    key    = "terraform.tfstate"
    region = "us-east-1"
  }
}

data "terraform_remote_state" "saws-vpc" {
  backend = "s3"

  config {
    bucket = "saws-vpc-creation"
    key    = "terraform.tfstate"
    region = "${var.region}"
  }
}

data "terraform_remote_state" "saws-iam" {
  backend = "s3"

  config {
    bucket = "saws-az2-iam"
    key    = "terraform.tfstate"
    region = "${var.region}"
  }
}

data "terraform_remote_state" "saws-networking" {
  backend = "s3"

  config {
    bucket = "saws-az2-networking"
    key    = "terraform.tfstate"
    region = "${var.region}"
  }
}

variable "tag_owner" {}
variable "key_name" {}
variable "region" {}
variable "availability_zone" {}
