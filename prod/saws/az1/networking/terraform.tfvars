saws_vpc_public_subnet_1 = "10.199.0.0/28"
saws_vpc_private_subnet_1 = "10.199.0.32/28"
tag_owner = "ISP"
availability_zone = "us-east-1a"
region = "us-east-1"
terragrunt = {
  dependencies {
    paths = [
      "../../../saws/global/backends",
      "../../../saws/vpc",
      "../../../vpc_peering"
    ]
  }
}