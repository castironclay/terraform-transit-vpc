# Output bucket IDs and ARNs
## SAWS AZ1
### IAM
output "saws-az1-iam-id" {
  value = "${module.saws-az1-iam.bucket_id}"
}

output "saws-az1-iam-arn" {
  value = "${module.saws-az1-iam.bucket_arn}"
}

### Networking
output "saws-az1-networking-id" {
  value = "${module.saws-az1-networking.bucket_id}"
}

output "saws-az1-networking-arn" {
  value = "${module.saws-az1-networking.bucket_arn}"
}

### EC2
output "saws-az1-ec2-id" {
  value = "${module.saws-az1-ec2.bucket_id}"
}

output "saws-az1-ec2-arn" {
  value = "${module.saws-az1-ec2.bucket_arn}"
}

## SAWS AZ2
### IAM
output "saws-az2-iam-id" {
  value = "${module.saws-az2-iam.bucket_id}"
}

output "saws-az2-iam-arn" {
  value = "${module.saws-az2-iam.bucket_arn}"
}

### Networking
output "saws-az2-networking-id" {
  value = "${module.saws-az2-networking.bucket_id}"
}

output "saws-az2-networking-arn" {
  value = "${module.saws-az2-networking.bucket_arn}"
}

### EC2
output "saws-az2-ec2-id" {
  value = "${module.saws-az2-ec2.bucket_id}"
}

output "saws-az2-ec2-arn" {
  value = "${module.saws-az2-ec2.bucket_arn}"
}

## Global Backends

output "saws-vpc-creation-id" {
  value = "${module.saws-vpc-creation.bucket_id}"
}

output "saws-vpc-creation-arn" {
  value = "${module.saws-vpc-creation.bucket_arn}"
}
