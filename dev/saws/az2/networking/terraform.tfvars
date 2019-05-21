saws_vpc_public_subnet_2 = "10.199.0.16/28"
saws_vpc_private_subnet_2 = "10.199.0.48/28"
tag_owner = "ISP"
availability_zone = "us-east-1b"
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