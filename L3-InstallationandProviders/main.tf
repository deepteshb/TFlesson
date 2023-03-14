terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "4.52.0" 
    }

    
  }
  
}

provider "aws" {
  # Configuration options
}

resource "aws_instance" "web1"{
    ami = "ami-0cca134ec43cf708f"
    instance_type = "t2.micro"
}


resource "aws_instance" "web1" {
    ami = "ami-0cca134ec43cf708f"
    instance_type = "t2.micro"
}