# Create route tables
## Create SAWS Public Route Table
resource "aws_route_table" "saws_public_rtb2" {
  vpc_id = "${data.terraform_remote_state.saws-vpc-creation.aws_vpc_sawsvpc_id}"

  tags {
    Name  = "SAWS Public RTB 2"
    Owner = "${var.tag_owner}"
  }
}

## Add route to public route table
resource "aws_route" "saws_public_route_igw" {
  route_table_id         = "${aws_route_table.saws_public_rtb2.id}"
  destination_cidr_block = "0.0.0.0/0"
  gateway_id             = "${data.terraform_remote_state.saws-vpc-creation.aws_vpc_sawsigw_id}"
  depends_on             = ["aws_route_table.saws_public_rtb2"]
}

## create saws private route table
resource "aws_route_table" "saws_private_rtb2" {
  vpc_id = "${data.terraform_remote_state.saws-vpc-creation.aws_vpc_sawsvpc_id}"

  tags {
    Name  = "SAWS Private RTB 2"
    Owner = "${var.tag_owner}"
  }
}

## add route to private route table

resource "aws_route" "saws_private_route_vpc_peering" {
  route_table_id            = "${aws_route_table.saws_private_rtb2.id}"
  destination_cidr_block    = "10.199.2.16/28"
  vpc_peering_connection_id = "${data.terraform_remote_state.saws-jaws-peering.peering_id}"
  depends_on                = ["aws_route_table.saws_private_rtb2"]
}

# Associate route tables to subnets
resource "aws_route_table_association" "SAWS_Public_Subnet2" {
  subnet_id      = "${module.saws_public_subnet2.subnet_id}"
  route_table_id = "${aws_route_table.saws_public_rtb2.id}"
}

resource "aws_route_table_association" "SAWS_Private_Subnet2" {
  subnet_id      = "${module.saws_private_subnet2.subnet_id}"
  route_table_id = "${aws_route_table.saws_private_rtb2.id}"
}
