output "aws_subnet_vpc_subnet2_cidr" {
  value = "${module.jaws_vpc_subnet2.subnet_cidr}"
}

output "aws_subnet_vpc_subnet2_id" {
  value = "${module.jaws_vpc_subnet2.subnet_id}"
}

output "aws_subnet_external_subnet2_cidr" {
  value = "${module.jaws_external_subnet2.subnet_cidr}"
}

output "aws_subnet_external_subnet2_id" {
  value = "${module.jaws_external_subnet2.subnet_id}"
}

output "aws_subnet_internal_subnet2_cidr" {
  value = "${module.jaws_internal_subnet2.subnet_cidr}"
}

output "aws_subnet_internal_subnet2_id" {
  value = "${module.jaws_internal_subnet2.subnet_id}"
}

output "aws_pa2_eip" {
  value = "${module.pa2_eip.eip_id}"
}

output "aws_pa2_eip_ip" {
  value = "${module.pa2_eip.eip_public_ip}"
}

output "jaws_pa2_security_group_id" {
  value = "${aws_security_group.jaws_pa2.id}"
}

output "jaws_csr2_security_group_id" {
  value = "${aws_security_group.jaws_csr2.id}"
}

output "jaws_pa2_eth1_id" {
  value = "${module.jaws_pa2_eth1.interface_id}"
}

output "jaws_pa2_eth2_id" {
  value = "${module.jaws_pa2_eth2.interface_id}"
}

output "jaws_csr2_gi2_id" {
  value = "${module.jaws_csr2_gi2.interface_id}"
}

output "jaws_pa2_eth1_ip" {
  value = "${module.jaws_pa2_eth1.interface_private_ip}"
}

output "jaws_pa2_eth2_ip" {
  value = "${module.jaws_pa2_eth2.interface_private_ip}"
}

output "jaws_csr2_gi2_ip" {
  value = "${module.jaws_csr2_gi2.interface_private_ip}"
}

output "az2_bgp_asn" {
  value = "65200"
}

output "default_cgw_type" {
  value = "ipsec.1"
}
