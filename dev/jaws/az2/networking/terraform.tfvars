jaws_vpc_public_subnet_2 = "10.199.2.16/28"
jaws_vpc_intra_subnet_2 = "10.199.2.48/28"
jaws_vpc_private_subnet_2 = "10.199.2.80/28"
tag_owner = "ISP"
key_name = "ISP"
availability_zone = "us-east-1b"
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