resource "aws_instance" "web" {
  ami           = var.ami
  instance_type = var.instance

  tags = var.vm_tags
}