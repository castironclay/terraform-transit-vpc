output "aws_subnet_internal_subnet2_cidr" {
  value = "${module.saws_private_subnet2.subnet_cidr}"
}

output "aws_subnet_internal_subnet2_id" {
  value = "${module.saws_private_subnet2.subnet_id}"
}

output "aws_subnet_external_subnet2_cidr" {
  value = "${module.saws_public_subnet2.subnet_cidr}"
}

output "aws_subnet_external_subnet2_id" {
  value = "${module.saws_public_subnet2.subnet_id}"
}

output "aws_pa2_eip" {
  value = "${module.pa2_eip.eip_id}"
}

output "saws_pa2_security_group_id" {
  value = "${aws_security_group.saws_pa2.id}"
}

output "saws_pa2_eth1_id" {
  value = "${module.saws_pa2_eth1.interface_id}"
}

output "saws_pa2_eth2_id" {
  value = "${module.saws_pa2_eth2.interface_id}"
}

output "saws_pa2_eth1_ip" {
  value = "${module.saws_pa2_eth1.interface_private_ip}"
}

output "saws_pa2_eth2_ip" {
  value = "${module.saws_pa2_eth2.interface_private_ip}"
}
