# Create Elastic IP
## PA2 Elastic IP
module "pa2_eip" {
  source = "../../../../modules/networking/eip"

  tag_owner = "${var.tag_owner}"
  tag_name  = "JAWS PA2"
}
