jaws_vpc   = "10.199.2.0/23"
tag_owner = "ISP"
key_name = "ISP"
region = "us-east-1"
terragrunt = {
  dependencies {
    paths = ["../global/backends"]
  }
}