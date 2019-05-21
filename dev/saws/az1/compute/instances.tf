# Create Instances
module "isp_vpc_pa1" {
  source = "../../../../modules/compute/palo-alto"

  security_group_id    = "${data.terraform_remote_state.saws-networking.saws_pa1_security_group_id}"
  instance_name        = "SAWS PA 1"
  user_data            = "vmseries-bootstrap-aws-s3bucket=sawsvpc-pa1"
  subnet_id            = "${data.terraform_remote_state.saws-networking.aws_subnet_external_subnet1_id}"
  private_ip           = "${cidrhost(data.terraform_remote_state.saws-networking.aws_subnet_external_subnet1_cidr, 7)}"
  iam_instance_profile = "${data.terraform_remote_state.saws-iam.instance_profile_sawsvpc-pa1}"
  availability_zone    = "${var.availability_zone}"
  key_name             = "${var.key_name}"
}

# Attach Interfaces
resource "aws_network_interface_attachment" "saws_pa1_eth1" {
  device_index         = 1
  instance_id          = "${module.isp_vpc_pa1.instance_id}"
  network_interface_id = "${data.terraform_remote_state.saws-networking.saws_pa1_eth1_id}"
}

resource "aws_network_interface_attachment" "saws_pa1_eth2" {
  device_index         = 2
  instance_id          = "${module.isp_vpc_pa1.instance_id}"
  network_interface_id = "${data.terraform_remote_state.saws-networking.saws_pa1_eth2_id}"
}
