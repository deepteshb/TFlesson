terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "4.57.0"
    }
  }
}

provider "aws" {
  # Configuration options
}

module "vm-dev-1" {
    source = "../modules/ec2"
    instance = "t2.micro"
    vm_tags = var.default_tags
  
}

module "vm-dev-2" {
    source = "../modules/ec2"
    instance = "t2.micro"
    vm_tags = var.default_tags
  
}

module "vm-dev-3" {
    source = "../modules/ec2"
    instance = "t2.micro"
    vm_tags = var.default_tags
  
}