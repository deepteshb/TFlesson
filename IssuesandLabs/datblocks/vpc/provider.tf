terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "4.59.0"
    }
  }
  backend "s3" {
    bucket = "my-remote-backend-tfe"
    key    = "dev/vpc.terraform.tfstate"
    region = "ap-south-1"
  }
}

provider "aws" {
  # Configuration options
}