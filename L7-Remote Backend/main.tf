resource "aws_instance" "prod1-webserver" {
    ami = "ami-0e742cca61fb65051"
    instance_type = "t2.micro"
  
}

resource "aws_s3_bucket" "myRemoteBackend" {
  bucket = "my-remote-backend-01"

  tags = {
    Name        = "My Remote Backend"
  }
}