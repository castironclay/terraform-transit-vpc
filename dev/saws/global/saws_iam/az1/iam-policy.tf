resource "aws_iam_policy" "saws-pa1-bootstrap" {
  name        = "saws-pa1-bootstrap"
  path        = "/"
  description = "Policy for JAWS VPC PA1 bootstrap configuration"

  policy = <<EOF
{
    "Version": "2012-10-17",
    "Statement": [
        {
            "Effect": "Allow",
            "Action": [
                "s3:ListBucket"
            ],
            "Resource": [
                "arn:aws:s3:::sawsvpc-pa1"
            ]
        },
        {
            "Effect": "Allow",
            "Action": [
                "s3:GetObject"
            ],
            "Resource": [
                "arn:aws:s3:::sawsvpc-pa1/*"
            ]
        }
    ]
}
EOF
}

resource "aws_iam_policy_attachment" "sawsvpc-pa1-policy-attach" {
  name       = "sawsvpc-pa1-attach"
  roles      = ["${aws_iam_role.saws-pa1.name}"]
  policy_arn = "${aws_iam_policy.saws-pa1-bootstrap.arn}"
}
