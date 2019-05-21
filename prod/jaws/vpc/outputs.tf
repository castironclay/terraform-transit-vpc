# Output VPC ID and CIDR
output "aws_vpc_jawsvpc_id" {
  value = "${module.jaws_vpc.vpc_id}"
}

output "aws_vpc_jawsvpc_cidr" {
  value = "${module.jaws_vpc.vpc_cidr}"
}

output "aws_vpc_jawsigw_id" {
  value = "${module.jaws_igw.igw_id}"
}
