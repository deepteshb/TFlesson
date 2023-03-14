resource "aws_instance" "allvms" {
  ami           = var.instance_ami_id
  instance_type = var.instance_type[0]
}
