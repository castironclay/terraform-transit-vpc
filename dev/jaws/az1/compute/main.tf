provider "aws" {
  region = "${var.region}"
}

terraform {
  backend "s3" {
    bucket = "jaws-az1-ec2"
    key    = "terraform.tfstate"
    region = "us-east-1"
  }
}

data "terraform_remote_state" "jaws-vpc" {
  backend = "s3"

  config {
    bucket = "jaws-vpc-creation"
    key    = "terraform.tfstate"
    region = "${var.region}"
  }
}

data "terraform_remote_state" "jaws-iam" {
  backend = "s3"

  config {
    bucket = "jaws-az1-iam"
    key    = "terraform.tfstate"
    region = "${var.region}"
  }
}

data "terraform_remote_state" "jaws-networking" {
  backend = "s3"

  config {
    bucket = "jaws-az1-networking"
    key    = "terraform.tfstate"
    region = "${var.region}"
  }
}

variable "tag_owner" {}
variable "key_name" {}
variable "region" {}
variable "availability_zone" {}
