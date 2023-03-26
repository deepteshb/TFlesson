data "terraform_remote_state" "aws_vpc" {
  backend = "s3"

  config = {
  bucket = "my-remote-backend-tfe"
    key    = "dev/vpc.terraform.tfstate"
    region = "ap-south-1"
   }
  }

resource "aws_instance" "ec2" {
  count         = 1
  ami           = "ami-05afd67c4a44cc983" # us-west-2
  instance_type = "t2.micro"
  subnet_id     = data.terraform_remote_state.aws_vpc.outputs.public_subnet_1

}

