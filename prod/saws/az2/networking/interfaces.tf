# Create Interfaces
module "saws_pa2_eth1" {
  source = "../../../../modules/networking/network_interface"

  tag_owner                   = "${var.tag_owner}"
  private_ip                  = "${cidrhost(module.saws_public_subnet2.subnet_cidr, 6)}"
  interface_security_group_id = "${aws_security_group.saws_pa2.id}"
  interface_subnet_id         = "${module.saws_public_subnet2.subnet_id}"
  interface_name              = "SAWS PA1 eth1/1"
}

module "saws_pa2_eth2" {
  source = "../../../../modules/networking/network_interface"

  tag_owner                   = "${var.tag_owner}"
  private_ip                  = "${cidrhost(module.saws_private_subnet2.subnet_cidr, 6)}"
  interface_security_group_id = "${aws_security_group.saws_pa2.id}"
  interface_subnet_id         = "${module.saws_private_subnet2.subnet_id}"
  interface_name              = "SAWS PA1 eth1/2"
}
