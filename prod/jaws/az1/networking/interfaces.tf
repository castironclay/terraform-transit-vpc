# Define Interfaces
## Define Firewall Interfaces
module "jaws_pa1_eth1" {
  source = "../../../../modules/networking/network_interface"

  tag_owner                   = "${var.tag_owner}"
  private_ip                  = "${cidrhost(module.jaws_vpc_subnet1.subnet_cidr, 7)}"
  interface_security_group_id = "${aws_security_group.jaws_pa1.id}"
  interface_subnet_id         = "${module.jaws_vpc_subnet1.subnet_id}"
  interface_name              = "PA1_eth1/1"
}

module "jaws_pa1_eth2" {
  source = "../../../../modules/networking/network_interface"

  tag_owner                   = "${var.tag_owner}"
  private_ip                  = "${cidrhost(module.jaws_internal_subnet1.subnet_cidr, 6)}"
  interface_security_group_id = "${aws_security_group.jaws_pa1.id}"
  interface_subnet_id         = "${module.jaws_internal_subnet1.subnet_id}"
  interface_name              = "PA1_eth1/2"
}

module "jaws_csr1_gi2" {
  source = "../../../../modules/networking/network_interface"

  tag_owner                   = "${var.tag_owner}"
  private_ip                  = "${cidrhost(module.jaws_vpc_subnet1.subnet_cidr, 6)}"
  interface_security_group_id = "${aws_security_group.jaws_csr1.id}"
  interface_subnet_id         = "${module.jaws_vpc_subnet1.subnet_id}"
  interface_name              = "CSR1_gi2"
}
