# Attach Elastic IPs
## Attach PA1 Elastic IP

resource "aws_eip_association" "PA1_EIP" {
  allocation_id        = "${data.terraform_remote_state.jaws-networking.aws_pa1_eip}"
  network_interface_id = "${data.terraform_remote_state.jaws-networking.jaws_pa1_eth2_id}"
  private_ip_address   = "${data.terraform_remote_state.jaws-networking.jaws_pa1_eth2_ip}"
}
