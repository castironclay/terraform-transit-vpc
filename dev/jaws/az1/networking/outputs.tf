output "aws_subnet_vpc_subnet1_cidr" {
  value = "${module.jaws_vpc_subnet1.subnet_cidr}"
}

output "aws_subnet_vpc_subnet1_id" {
  value = "${module.jaws_vpc_subnet1.subnet_id}"
}

output "aws_subnet_external_subnet1_cidr" {
  value = "${module.jaws_external_subnet1.subnet_cidr}"
}

output "aws_subnet_external_subnet1_id" {
  value = "${module.jaws_external_subnet1.subnet_id}"
}

output "aws_subnet_internal_subnet1_cidr" {
  value = "${module.jaws_internal_subnet1.subnet_cidr}"
}

output "aws_subnet_internal_subnet1_id" {
  value = "${module.jaws_internal_subnet1.subnet_id}"
}

output "aws_pa1_eip" {
  value = "${module.pa1_eip.eip_id}"
}

output "aws_pa1_eip_ip" {
  value = "${module.pa1_eip.eip_public_ip}"
}

output "jaws_pa1_security_group_id" {
  value = "${aws_security_group.jaws_pa1.id}"
}

output "jaws_csr1_security_group_id" {
  value = "${aws_security_group.jaws_csr1.id}"
}

output "jaws_pa1_eth1_id" {
  value = "${module.jaws_pa1_eth1.interface_id}"
}

output "jaws_pa1_eth2_id" {
  value = "${module.jaws_pa1_eth2.interface_id}"
}

output "jaws_csr1_gi2_id" {
  value = "${module.jaws_csr1_gi2.interface_id}"
}

output "jaws_pa1_eth1_ip" {
  value = "${module.jaws_pa1_eth1.interface_private_ip}"
}

output "jaws_pa1_eth2_ip" {
  value = "${module.jaws_pa1_eth2.interface_private_ip}"
}

output "jaws_csr1_gi2_ip" {
  value = "${module.jaws_csr1_gi2.interface_private_ip}"
}

output "az1_bgp_asn" {
  value = "65199"
}

output "default_cgw_type" {
  value = "ipsec.1"
}
