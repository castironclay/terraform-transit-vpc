resource "aws_instance" "ISP_VPC_CSR" {
  ami                         = "${var.ami_id}"
  instance_type               = "${var.size}"
  key_name                    = "${var.key_name}"
  availability_zone           = "${var.availability_zone}"
  associate_public_ip_address = "${var.allocate_public}"
  subnet_id                   = "${var.subnet_id}"
  vpc_security_group_ids      = ["${var.security_group_id}"]
  source_dest_check           = "${var.source_check}"
  private_ip                  = "${var.private_ip}"
  monitoring                  = "${var.monitoring}"

  root_block_device {
    delete_on_termination = "${var.delete_root_volume}"
  }

  tags {
    Name  = "${var.instance_name}"
    Owner = "${var.tag_owner}"
  }
}
