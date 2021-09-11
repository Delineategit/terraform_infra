provider "aws" {
  region = var.region
  version = "~> 3.37"
}
 
terraform {
  backend "local" {}
required_version = "~> 0.12.20"
}