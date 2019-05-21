output "interface_id" {
  value = "${aws_network_interface.aws_interface.id}"
}

output "interface_private_ip" {
  value = "${aws_network_interface.aws_interface.private_ip}"
}
