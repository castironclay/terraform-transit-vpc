# Create Elastic IP
## PA1 Elastic IP
module "pa1_eip" {
  source = "../../../../modules/networking/eip"

  tag_owner = "${var.tag_owner}"
  tag_name  = "JAWS PA1"
}
