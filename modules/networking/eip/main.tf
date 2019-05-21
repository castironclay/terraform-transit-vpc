# Create Elasitc IP
resource "aws_eip" "eip" {
  vpc = "${var.attach_vpc}"

  tags {
    Name  = "${var.tag_name}"
    Owner = "${var.tag_owner}"
  }
}
