resource "aws_iam_policy" "jaws-pa1-bootstrap" {
  name        = "jaws-pa1-bootstrap"
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
                "arn:aws:s3:::transitvpc-pa1"
            ]
        },
        {
            "Effect": "Allow",
            "Action": [
                "s3:GetObject"
            ],
            "Resource": [
                "arn:aws:s3:::transitvpc-pa1/*"
            ]
        }
    ]
}
EOF
}

resource "aws_iam_policy_attachment" "jawsvpc-pa1-policy-attach" {
  name       = "jawsvpc-pa1-attach"
  roles      = ["${aws_iam_role.jaws-pa1.name}"]
  policy_arn = "${aws_iam_policy.jaws-pa1-bootstrap.arn}"
}
