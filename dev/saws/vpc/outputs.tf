# Output VPC ID and CIDR
output "aws_vpc_sawsvpc_id" {
  value = "${module.saws_vpc.vpc_id}"
}

output "aws_vpc_sawsvpc_cidr" {
  value = "${module.saws_vpc.vpc_cidr}"
}

output "aws_vpc_sawsigw_id" {
  value = "${module.saws_vpc_igw.igw_id}"
}
