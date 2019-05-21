# VPC Modules
resource "aws_vpc" "vpc" {
  cidr_block           = "${var.vpc_cidr}"
  enable_dns_hostnames = true

  tags {
    Name  = "${var.tag_name}"
    Owner = "${var.tag_owner}"
  }
}
