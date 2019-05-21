# Create Elastic IPs
## PA2 Elastic IP
module "pa2_eip" {
  source = "../../../../modules/networking/eip"

  tag_owner = "ISP"
  tag_name  = "SAWS PA2"
}
