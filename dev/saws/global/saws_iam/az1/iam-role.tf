resource "aws_iam_role" "saws-pa1" {
  name = "SAWS-PA1"

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

resource "aws_iam_instance_profile" "saws-pa1-profile" {
  name = "saws-pa1-profile"
  role = "${aws_iam_role.saws-pa1.name}"
}
