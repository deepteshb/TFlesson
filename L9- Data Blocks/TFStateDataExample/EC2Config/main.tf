/* data "aws_subnet" "selected" {
  filter {
    name = "tag:Name"
    values = ["subnet-abc",]
  }
} */

data "terraform_remote_state" "vpc_data"{
  backend = "s3"
  config = {
    bucket = "my-remote-backend-tfe"
    key    = "dev/dev.terraform.tfstate"
    region = "ap-south-1"
    
   }
}

resource "aws_instance" "web-1" {
  ami = "ami-0e742cca61fb65051" # Linux OS
  instance_type = "t2.micro"
  subnet_id = data.terraform_remote_state.vpc_data.outputs.tfe-public-subnetID
}

output "subnetid" {
  value = data.terraform_remote_state.vpc_data.outputs.tfe-public-subnetID
  
}