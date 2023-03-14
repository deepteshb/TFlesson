resource "aws_instance" "prod1-webserver" {
    ami = "ami-0e742cca61fb65051"
    instance_type = "t2.large"
  
}
# + = Create
# - = Delete
# ~ = Update

#apply