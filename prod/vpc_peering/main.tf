# Create VPC Peering
provider "aws" {
  region = "${var.region}"
}

terraform {
  backend "s3" {
    bucket = "saws-jaws-peering"
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

data "terraform_remote_state" "jaws-vpc" {
  backend = "s3"

  config {
    bucket = "jaws-vpc-creation"
    key    = "terraform.tfstate"
    region = "${var.region}"
  }
}

resource "aws_vpc_peering_connection" "vpc_peering" {
  peer_vpc_id = "${data.terraform_remote_state.saws-vpc.aws_vpc_sawsvpc_id}"
  vpc_id      = "${data.terraform_remote_state.jaws-vpc.aws_vpc_jawsvpc_id}"
  auto_accept = true

  tags {
    Name  = "SAWS and JAWS Peering"
    Owner = "${var.tag_owner}"
  }
}
