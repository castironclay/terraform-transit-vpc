# Create Instances
module "saws_vpc_pa2" {
  source = "../../../../modules/compute/palo-alto"

  security_group_id    = "${data.terraform_remote_state.saws-networking.saws_pa2_security_group_id}"
  instance_name        = "SAWS PA 2"
  user_data            = "vmseries-bootstrap-aws-s3bucket=sawsvpc-pa2"
  subnet_id            = "${data.terraform_remote_state.saws-networking.aws_subnet_external_subnet2_id}"
  private_ip           = "${cidrhost(data.terraform_remote_state.saws-networking.aws_subnet_external_subnet2_cidr, 7)}"
  iam_instance_profile = "${data.terraform_remote_state.saws-iam.instance_profile_sawsvpc-pa2}"
  availability_zone    = "${var.availability_zone}"
}

# Attach Interfaces
resource "aws_network_interface_attachment" "saws_pa2_eth1" {
  device_index         = 1
  instance_id          = "${module.saws_vpc_pa2.instance_id}"
  network_interface_id = "${data.terraform_remote_state.saws-networking.saws_pa2_eth1_id}"
}

resource "aws_network_interface_attachment" "saws_pa2_eth2" {
  device_index         = 2
  instance_id          = "${module.saws_vpc_pa2.instance_id}"
  network_interface_id = "${data.terraform_remote_state.saws-networking.saws_pa2_eth2_id}"
}
