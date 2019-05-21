tag_owner = "ISP"
key_name = "ISP"
availability_zone = "us-east-1b"
region = "us-east-1"
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