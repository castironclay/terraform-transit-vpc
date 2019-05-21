# Define the SAWS VPC subnets
## Define public subnet
module "saws_public_subnet1" {
  source = "../../../../modules/networking/subnets"

  tag_name          = "SAWS Public Subnet 1"
  tag_owner         = "${var.tag_owner}"
  availability_zone = "${var.availability_zone}"
  vpc_id            = "${data.terraform_remote_state.saws-vpc-creation.aws_vpc_sawsvpc_id}"
  subnet_cidr       = "${var.saws_vpc_public_subnet_1}"
}

## Define private subnet
module "saws_private_subnet1" {
  source = "../../../../modules/networking/subnets"

  tag_name          = "SAWS Private Subnet 1"
  tag_owner         = "${var.tag_owner}"
  availability_zone = "${var.availability_zone}"
  vpc_id            = "${data.terraform_remote_state.saws-vpc-creation.aws_vpc_sawsvpc_id}"
  subnet_cidr       = "${var.saws_vpc_private_subnet_1}"
}
