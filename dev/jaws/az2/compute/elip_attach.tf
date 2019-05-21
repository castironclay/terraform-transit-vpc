# Attach Elastic IPs
## Attach PA2 Elastic IP

resource "aws_eip_association" "PA2_EIP" {
  allocation_id        = "${data.terraform_remote_state.jaws-networking.aws_pa2_eip}"
  network_interface_id = "${data.terraform_remote_state.jaws-networking.jaws_pa2_eth2_id}"
  private_ip_address   = "${data.terraform_remote_state.jaws-networking.jaws_pa2_eth2_ip}"
}
