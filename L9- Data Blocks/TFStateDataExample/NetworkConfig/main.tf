terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "4.57.0"
    }
  }
  backend "s3" {
    bucket = "my-remote-backend-tfe"
    key    = "dev/dev.terraform.tfstate"
    region = "ap-south-1"
  }
}

resource "aws_s3_bucket" "myRemoteBackend" {
  bucket = "my-remote-backend-tfe"

  tags = {
    Name        = "My Remote Backend"
  }
}

resource "aws_vpc" "tf-vpc" {
  cidr_block = "10.0.0.0/16"

tags = {
  "Name" = "tf-vpc"
}
}

resource "aws_subnet" "tfe-public-subnet" {
  vpc_id     = aws_vpc.tf-vpc.id
  cidr_block = "10.0.1.0/24"

  tags = {
    Name = "tfe-public-subnet"
  }
}

output "tfe-public-subnetID" {
  value = aws_subnet.tfe-public-subnet.id
  
}