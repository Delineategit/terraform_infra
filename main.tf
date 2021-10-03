provider "aws" {
  region = var.region
  version = "~> 3.37"
}
 
terraform {
  backend "s3" {
    bucket = "tf-state-file-moon"
    key    = "terraform-tfstate/"
    region = "ap-south-1"
  }
required_version = "~> 0.12.20"
}
