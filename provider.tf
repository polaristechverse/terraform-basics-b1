provider "aws" {}
terraform {
  backend "s3" {
    bucket         = "cgit-terraform-backend"
    key            = "terraform.tfstate"
    region         = "us-east-1"
    encrypt        = true
  }
}

