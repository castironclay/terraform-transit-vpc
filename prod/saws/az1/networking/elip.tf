# Create Elastic IPs
## PA1 Elastic IP
module "pa1_eip" {
  source = "../../../../modules/networking/eip"

  tag_owner = "ISP"
  tag_name  = "SAWS PA1"
}
