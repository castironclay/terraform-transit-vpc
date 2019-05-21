# Attach Elastic IPs
## Attach pa2 Elastic IP

resource "aws_eip_association" "pa2_EIP" {
  allocation_id        = "${data.terraform_remote_state.saws-networking.aws_pa2_eip}"
  network_interface_id = "${data.terraform_remote_state.saws-networking.saws_pa2_eth1_id}"
  private_ip_address   = "${data.terraform_remote_state.saws-networking.saws_pa2_eth1_ip}"
}
