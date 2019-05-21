# Subnet module
resource "aws_subnet" "subnet" {
  vpc_id            = "${var.vpc_id}"
  cidr_block        = "${var.subnet_cidr}"
  availability_zone = "${var.availability_zone}"

  tags {
    Name  = "${var.tag_name}"
    Owner = "${var.tag_owner}"
  }
}
