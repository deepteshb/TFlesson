variable "a" {
    default = "amidxyz"
}
variable "b" {
    default = "t2.xlarge"
  
}

resource "aws_instance" "dev1-webserver" {
    ami = var.a # expression - variable expression
    instance_type = var.b
    tags = {
      "Name" = "dev1-webserver"
    }
}