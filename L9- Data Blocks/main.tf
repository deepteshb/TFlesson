data "aws_subnet" "selected" {
  availability_zone = "ap-south-1b"
  filter {
    name = "tag:Name"
    values = ["subnet-abc",]
  }
}

resource "aws_instance" "web-1" {
  ami = "ami-0e742cca61fb65051" # Linux OS
  instance_type = "t2.micro"
  subnet_id = data.aws_subnet.selected.id
}

output "subnetid" {
    value = data.aws_subnet.selected.id
  
}