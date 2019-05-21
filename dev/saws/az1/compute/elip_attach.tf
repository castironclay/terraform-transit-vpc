# Attach Elastic IPs
## Attach pa1 Elastic IP

resource "aws_eip_association" "pa1_EIP" {
  allocation_id        = "${data.terraform_remote_state.saws-networking.aws_pa1_eip}"
  network_interface_id = "${data.terraform_remote_state.saws-networking.saws_pa1_eth1_id}"
  private_ip_address   = "${data.terraform_remote_state.saws-networking.saws_pa1_eth1_ip}"
}
