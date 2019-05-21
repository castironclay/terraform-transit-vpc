resource "aws_security_group" "saws_pa1" {
  name   = "SAWS PA 1"
  vpc_id = "${data.terraform_remote_state.saws-vpc-creation.aws_vpc_sawsvpc_id}"

  ingress {
    from_port   = 0
    protocol    = "-1"
    to_port     = 0
    cidr_blocks = ["10.199.2.6/32"]
  }

  ingress {
    from_port   = 500
    protocol    = "17"
    to_port     = 500
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port   = 4500
    protocol    = "17"
    to_port     = 4500
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port   = 443
    to_port     = 443
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags {
    Name  = "SAWS PA 1"
    Owner = "${var.tag_owner}"
  }
}
