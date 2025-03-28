provider "aws" {
  region = "ap-south-1"
}

terraform {
  backend "s3" {
    bucket         = "anshuk-terraform-state-bucket"
    key            = "eks/terraform.tfstate"
    region         = "ap-south-1"
    dynamodb_table = "terraform-locks"
    encrypt        = true
  }
}
