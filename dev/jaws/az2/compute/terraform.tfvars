tag_owner = "ISP"
key_name = "ISP"
region = "us-east-1"
availability_zone = "us-east-1b"
terragrunt = {
  dependencies {
    paths = [
      "../../../jaws/global/backends",
      "../../../jaws/vpc",
      "../../../vpc_peering",
      "../networking"
    ]
  }
}