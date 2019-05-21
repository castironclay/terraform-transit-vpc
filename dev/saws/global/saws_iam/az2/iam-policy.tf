resource "aws_iam_policy" "saws-pa2-bootstrap" {
  name        = "saws-pa2-bootstrap"
  path        = "/"
  description = "Policy for SAWS VPC PA2 bootstrap configuration"

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
                "arn:aws:s3:::sawsvpc-pa2"
            ]
        },
        {
            "Effect": "Allow",
            "Action": [
                "s3:GetObject"
            ],
            "Resource": [
                "arn:aws:s3:::sawsvpc-pa2/*"
            ]
        }
    ]
}
EOF
}

resource "aws_iam_policy_attachment" "sawsvpc-pa2-policy-attach" {
  name       = "sawsvpc-pa2-attach"
  roles      = ["${aws_iam_role.saws-pa2.name}"]
  policy_arn = "${aws_iam_policy.saws-pa2-bootstrap.arn}"
}
