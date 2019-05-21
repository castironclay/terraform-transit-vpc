output "aws_subnet_internal_subnet1_cidr" {
  value = "${module.saws_private_subnet1.subnet_cidr}"
}

output "aws_subnet_internal_subnet1_id" {
  value = "${module.saws_private_subnet1.subnet_id}"
}

output "aws_subnet_external_subnet1_cidr" {
  value = "${module.saws_public_subnet1.subnet_cidr}"
}

output "aws_subnet_external_subnet1_id" {
  value = "${module.saws_public_subnet1.subnet_id}"
}

output "aws_pa1_eip" {
  value = "${module.pa1_eip.eip_id}"
}

output "saws_pa1_security_group_id" {
  value = "${aws_security_group.saws_pa1.id}"
}

output "saws_pa1_eth1_id" {
  value = "${module.saws_pa1_eth1.interface_id}"
}

output "saws_pa1_eth2_id" {
  value = "${module.saws_pa1_eth2.interface_id}"
}

output "saws_pa1_eth1_ip" {
  value = "${module.saws_pa1_eth1.interface_private_ip}"
}

output "saws_pa1_eth2_ip" {
  value = "${module.saws_pa1_eth2.interface_private_ip}"
}
