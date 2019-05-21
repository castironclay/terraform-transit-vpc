# Create route tables
## Create SAWS Public Route Table
resource "aws_route_table" "saws_public_rtb1" {
  vpc_id = "${data.terraform_remote_state.saws-vpc-creation.aws_vpc_sawsvpc_id}"

  tags {
    Name  = "SAWS Public RTB 1"
    Owner = "${var.tag_owner}"
  }
}

## Add route to public route table
resource "aws_route" "saws_public_route_igw" {
  route_table_id         = "${aws_route_table.saws_public_rtb1.id}"
  destination_cidr_block = "0.0.0.0/0"
  gateway_id             = "${data.terraform_remote_state.saws-vpc-creation.aws_vpc_sawsigw_id}"
  depends_on             = ["aws_route_table.saws_public_rtb1"]
}

## create saws private route table
resource "aws_route_table" "saws_private_rtb1" {
  vpc_id = "${data.terraform_remote_state.saws-vpc-creation.aws_vpc_sawsvpc_id}"

  tags {
    Name  = "SAWS Private RTB 1"
    Owner = "${var.tag_owner}"
  }
}

## add route to private route table

resource "aws_route" "saws_private_route_vpc_peering" {
  route_table_id            = "${aws_route_table.saws_private_rtb1.id}"
  destination_cidr_block    = "10.199.2.0/28"
  vpc_peering_connection_id = "${data.terraform_remote_state.saws-jaws-peering.peering_id}"
  depends_on                = ["aws_route_table.saws_private_rtb1"]
}

resource "aws_route_table_association" "SAWS_Public_Subnet1" {
  subnet_id      = "${module.saws_public_subnet1.subnet_id}"
  route_table_id = "${aws_route_table.saws_public_rtb1.id}"
}

resource "aws_route_table_association" "SAWS_Private_Subnet1" {
  subnet_id      = "${module.saws_private_subnet1.subnet_id}"
  route_table_id = "${aws_route_table.saws_private_rtb1.id}"
}
