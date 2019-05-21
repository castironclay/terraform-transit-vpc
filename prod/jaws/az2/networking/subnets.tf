# Define the JAWS VPC subnets
## Define External Subnets
module "jaws_external_subnet2" {
  source = "../../../../modules/networking/subnets"

  tag_owner         = "${var.tag_owner}"
  availability_zone = "${var.availability_zone}"
  tag_name          = "JAWS External Subnet 2"
  vpc_id            = "${data.terraform_remote_state.jaws-vpc-creation.aws_vpc_jawsvpc_id}"
  subnet_cidr       = "${var.jaws_vpc_public_subnet_2}"
}

## Define Intra-VPC Subnets
module "jaws_vpc_subnet2" {
  source = "../../../../modules/networking/subnets"

  tag_owner         = "${var.tag_owner}"
  availability_zone = "${var.availability_zone}"
  tag_name          = "JAWS Intra-VPC Subnet 2"
  vpc_id            = "${data.terraform_remote_state.jaws-vpc-creation.aws_vpc_jawsvpc_id}"
  subnet_cidr       = "${var.jaws_vpc_intra_subnet_2}"
}

## Define Internal Subnets
module "jaws_internal_subnet2" {
  source            = "../../../../modules/networking/subnets"
  tag_owner         = "${var.tag_owner}"
  availability_zone = "${var.availability_zone}"
  tag_name          = "JAWS Internal Subnet 2"
  vpc_id            = "${data.terraform_remote_state.jaws-vpc-creation.aws_vpc_jawsvpc_id}"
  subnet_cidr       = "${var.jaws_vpc_private_subnet_2}"
}
