provider "aws" {
  region = "us-east-1"
  profile = "terraform-user"
}

terraform {
  backend "s3" {
    bucket = "em-terraform-bucket"
    key    = "terraform.tfstate.dev"
    region = "us-east-1"
    profile = "terraform-user"
  }
}