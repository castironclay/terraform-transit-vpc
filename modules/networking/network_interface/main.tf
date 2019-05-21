resource "aws_network_interface" "aws_interface" {
  subnet_id         = "${var.interface_subnet_id}"
  security_groups   = ["${var.interface_security_group_id}"]
  source_dest_check = "${var.source_check}"
  private_ips       = ["${var.private_ip}"]

  tags {
    Name  = "${var.interface_name}"
    Owner = "${var.tag_owner}"
  }
}
