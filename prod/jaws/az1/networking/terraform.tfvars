jaws_vpc_public_subnet_1 = "10.199.2.0/28"
jaws_vpc_intra_subnet_1 = "10.199.2.32/28"
jaws_vpc_private_subnet_1 = "10.199.2.64/28"
tag_owner = "ISP"
availability_zone = "us-east-1a"
region = "us-east-1"
terragrunt = {
  dependencies {
    paths = [
      "../../../jaws/global/backends",
      "../../../jaws/vpc",
      "../../../vpc_peering"
    ]
  }
}