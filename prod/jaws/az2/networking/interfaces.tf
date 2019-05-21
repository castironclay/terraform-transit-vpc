# Define Interfaces
## Define Firewall Interfaces
module "jaws_pa2_eth1" {
  source = "../../../../modules/networking/network_interface"

  tag_owner                   = "${var.tag_owner}"
  private_ip                  = "${cidrhost(module.jaws_vpc_subnet2.subnet_cidr, 7)}"
  interface_security_group_id = "${aws_security_group.jaws_pa2.id}"
  interface_subnet_id         = "${module.jaws_vpc_subnet2.subnet_id}"
  interface_name              = "PA2_eth1/1"
}

module "jaws_pa2_eth2" {
  source = "../../../../modules/networking/network_interface"

  tag_owner                   = "${var.tag_owner}"
  private_ip                  = "${cidrhost(module.jaws_internal_subnet2.subnet_cidr, 6)}"
  interface_security_group_id = "${aws_security_group.jaws_pa2.id}"
  interface_subnet_id         = "${module.jaws_internal_subnet2.subnet_id}"
  interface_name              = "PA2_eth1/2"
}

module "jaws_csr2_gi2" {
  source = "../../../../modules/networking/network_interface"

  tag_owner                   = "${var.tag_owner}"
  private_ip                  = "${cidrhost(module.jaws_vpc_subnet2.subnet_cidr, 6)}"
  interface_security_group_id = "${aws_security_group.jaws_csr2.id}"
  interface_subnet_id         = "${module.jaws_vpc_subnet2.subnet_id}"
  interface_name              = "CSR2_gi2"
}
