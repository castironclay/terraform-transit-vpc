resource "aws_security_group" "jaws_csr1" {
  name   = "JAWS CSR 1"
  vpc_id = "${data.terraform_remote_state.jaws-vpc-creation.aws_vpc_jawsvpc_id}"

  ingress {
    from_port   = 0
    protocol    = "-1"
    to_port     = 0
    cidr_blocks = ["10.199.0.38/32"]
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
    Name  = "JAWS CSR 1"
    Owner = "${var.tag_owner}"
  }
}

resource "aws_security_group" "jaws_pa1" {
  name   = "JAWS PA 1"
  vpc_id = "${data.terraform_remote_state.jaws-vpc-creation.aws_vpc_jawsvpc_id}"

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
    Name  = "JAWS PA 1"
    Owner = "${var.tag_owner}"
  }
}
