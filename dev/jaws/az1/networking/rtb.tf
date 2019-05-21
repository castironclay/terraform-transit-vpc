# Create route tables
resource "aws_route_table" "jaws_externalrtb1" {
  vpc_id = "${data.terraform_remote_state.jaws-vpc-creation.aws_vpc_jawsvpc_id}"

  tags {
    Name  = "JAWS External RTB 1"
    Owner = "${var.tag_owner}"
  }
}

resource "aws_route" "jaws_route_vpc_peering" {
  route_table_id            = "${aws_route_table.jaws_externalrtb1.id}"
  destination_cidr_block    = "10.199.0.32/28"
  vpc_peering_connection_id = "${data.terraform_remote_state.saws-jaws-peering.peering_id}"
  depends_on                = ["aws_route_table.jaws_externalrtb1"]
}

resource "aws_route" "jaws_route_igw" {
  route_table_id         = "${aws_route_table.jaws_externalrtb1.id}"
  destination_cidr_block = "0.0.0.0/0"
  depends_on             = ["aws_route_table.jaws_externalrtb1"]
  gateway_id             = "${data.terraform_remote_state.jaws-vpc-creation.aws_vpc_jawsigw_id}"
}

resource "aws_route_table" "jaws_vpc_rtb1" {
  vpc_id = "${data.terraform_remote_state.jaws-vpc-creation.aws_vpc_jawsvpc_id}"

  tags {
    Name  = "JAWS Intra-VPC RTB 1"
    Owner = "${var.tag_owner}"
  }
}

resource "aws_route_table" "jaws_internal_rtb1" {
  vpc_id = "${data.terraform_remote_state.jaws-vpc-creation.aws_vpc_jawsvpc_id}"

  tags {
    Name  = "JAWS Internal RTB 1"
    Owner = "${var.tag_owner}"
  }
}

resource "aws_route_table_association" "jaws_external_subnet1" {
  subnet_id      = "${module.jaws_external_subnet1.subnet_id}"
  route_table_id = "${aws_route_table.jaws_externalrtb1.id}"
}

resource "aws_route_table_association" "jaws_vpc_subnet1" {
  subnet_id      = "${module.jaws_vpc_subnet1.subnet_id}"
  route_table_id = "${aws_route_table.jaws_vpc_rtb1.id}"
}

resource "aws_route_table_association" "jaws_internal_subnet1" {
  subnet_id      = "${module.jaws_internal_subnet1.subnet_id}"
  route_table_id = "${aws_route_table.jaws_internal_rtb1.id}"
}
