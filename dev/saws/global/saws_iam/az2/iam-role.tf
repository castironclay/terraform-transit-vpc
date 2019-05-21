resource "aws_iam_role" "saws-pa2" {
  name = "SAWS-PA2"

  assume_role_policy = <<EOF
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Principal": {
        "Service": "ec2.amazonaws.com"
      },
      "Effect": "Allow",
      "Sid": ""
    }
  ]
}
EOF
}

resource "aws_iam_instance_profile" "saws-pa2-profile" {
  name = "saws-pa2-profile"
  role = "${aws_iam_role.saws-pa2.name}"
}
