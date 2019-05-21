# Output bucket IDs and ARNs
## JAWS AZ1
### IAM
output "jaws-az1-iam-id" {
  value = "${module.jaws-az1-iam.bucket_id}"
}

output "jaws-az1-iam-arn" {
  value = "${module.jaws-az1-iam.bucket_arn}"
}

### Networking
output "jaws-az1-networking-id" {
  value = "${module.jaws-az1-networking.bucket_id}"
}

output "jaws-az1-networking-arn" {
  value = "${module.jaws-az1-networking.bucket_arn}"
}

### EC2
output "jaws-az1-ec2-id" {
  value = "${module.jaws-az1-ec2.bucket_id}"
}

output "jaws-az1-ec2-arn" {
  value = "${module.jaws-az1-ec2.bucket_arn}"
}

## JAWs AZ2
### IAM
output "jaws-az2-iam-id" {
  value = "${module.jaws-az2-iam.bucket_id}"
}

output "jaws-az2-iam-arn" {
  value = "${module.jaws-az2-iam.bucket_arn}"
}

### Networking
output "jaws-az2-networking-id" {
  value = "${module.jaws-az2-networking.bucket_id}"
}

output "jaws-az2-networking-arn" {
  value = "${module.jaws-az2-networking.bucket_arn}"
}

### EC2
output "jaws-az2-ec2-id" {
  value = "${module.jaws-az2-ec2.bucket_id}"
}

output "jaws-az2-ec2-arn" {
  value = "${module.jaws-az2-ec2.bucket_arn}"
}

## Global Backends

output "jaws-vpc-creation-id" {
  value = "${module.jaws-vpc-creation.bucket_id}"
}

output "jaws-vpc-creation-arn" {
  value = "${module.jaws-vpc-creation.bucket_arn}"
}
