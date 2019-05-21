provider "aws" {
  region = "us-east-1"
}

terraform {
  backend "s3" {
    bucket = "jaws-az2-iam"
    key    = "terraform.tfstate"
    region = "us-east-1"
  }
}
