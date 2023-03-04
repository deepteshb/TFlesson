terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "4.57.0"
    }
  }
  backend "s3" {
    bucket = "my-remote-backend-01"
    key    = "dev/dev.terraform.tfstate"
    region = "ap-south-1"
  }
}

provider "aws" {
  # Configuration options
  
}