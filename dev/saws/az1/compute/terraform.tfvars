tag_owner = "ISP"
key_name = "ISP"
region = "us-east-1"
availability_zone = "us-east-1a"
terragrunt = {
  dependencies {
    paths = [
      "../../../saws/global/backends",
      "../../../saws/vpc",
      "../../../vpc_peering",
      "../networking"
    ]
  }
}