provider "aws" {
  region = var.region
  version = "~> 3.37"
}
 
terraform {
  backend "s3" {
    bucket = "tfstatebucket-test"
    key    = "terraform-tfstate/"
    region = "ap-south-1"
  }
required_version = "~> 0.12.20"
}
