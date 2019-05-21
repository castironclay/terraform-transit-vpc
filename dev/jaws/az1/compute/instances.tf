# Create Instances
## Create Firewall
module "jaws_vpc_pa1" {
  source = "../../../../modules/compute/palo-alto"

  subnet_id            = "${data.terraform_remote_state.jaws-networking.aws_subnet_external_subnet1_id}"
  user_data            = "vmseries-bootstrap-aws-s3bucket=transitvpc-pa1"
  instance_name        = "JAWS_PA_1"
  availability_zone    = "${var.availability_zone}"
  iam_instance_profile = "${data.terraform_remote_state.jaws-iam.instance_profile_jawsvpc-pa1}"
  security_group_id    = "${data.terraform_remote_state.jaws-networking.jaws_pa1_security_group_id}"
  private_ip           = "${cidrhost(data.terraform_remote_state.jaws-networking.aws_subnet_external_subnet1_cidr, 8)}"
}

## Create Router
module "jaws_vpc_csr1" {
  source = "../../../../modules/compute/csr1000v"

  tag_owner         = "${var.tag_owner}"
  private_ip        = "${cidrhost(data.terraform_remote_state.jaws-networking.aws_subnet_external_subnet1_cidr, 6)}"
  key_name          = "${var.key_name}"
  instance_name     = "JAWS_CSR_1"
  security_group_id = "${data.terraform_remote_state.jaws-networking.jaws_csr1_security_group_id}"
  availability_zone = "${var.availability_zone}"
  subnet_id         = "${data.terraform_remote_state.jaws-networking.aws_subnet_external_subnet1_id}"
  ssh_key           = "${var.key_name}"
}

# Attach Interfaces
resource "aws_network_interface_attachment" "jaws_PA1_eth1" {
  device_index         = 1
  instance_id          = "${module.jaws_vpc_pa1.instance_id}"
  network_interface_id = "${data.terraform_remote_state.jaws-networking.jaws_pa1_eth1_id}"
}

resource "aws_network_interface_attachment" "jaws_PA1_eth2" {
  device_index         = 2
  instance_id          = "${module.jaws_vpc_pa1.instance_id}"
  network_interface_id = "${data.terraform_remote_state.jaws-networking.jaws_pa1_eth2_id}"
}

resource "aws_network_interface_attachment" "CSR1_gi2" {
  device_index         = 1
  instance_id          = "${module.jaws_vpc_csr1.instance_id}"
  network_interface_id = "${data.terraform_remote_state.jaws-networking.jaws_csr1_gi2_id}"
}
