resource "aws_iam_policy" "jaws-pa2-bootstrap" {
  name        = "jaws-pa2-bootstrap"
  path        = "/"
  description = "Policy for JAWS VPC PA2 bootstrap configuration"

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
                "arn:aws:s3:::transitvpc-pa2"
            ]
        },
        {
            "Effect": "Allow",
            "Action": [
                "s3:GetObject"
            ],
            "Resource": [
                "arn:aws:s3:::transitvpc-pa2/*"
            ]
        }
    ]
}
EOF
}

resource "aws_iam_policy_attachment" "jawsvpc-pa2-policy-attach" {
  name       = "jawsvpc-pa2-attach"
  roles      = ["${aws_iam_role.jaws-pa2.name}"]
  policy_arn = "${aws_iam_policy.jaws-pa2-bootstrap.arn}"
}
