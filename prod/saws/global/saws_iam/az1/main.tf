provider "aws" {
  region = "us-east-1"
}

terraform {
  backend "s3" {
    bucket = "saws-az1-iam"
    key    = "terraform.tfstate"
    region = "us-east-1"
  }
}
