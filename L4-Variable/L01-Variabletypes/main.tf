resource "aws_instance" "VM1" {
  ami           = var.list_of_ami_ids[0] # us-west-2
  instance_type = var.vm_instance_type[1]

  tags = var.global_tags
}

resource "aws_instance" "VM2" {
  ami           = var.list_of_ami_ids[1] # us-west-2
  instance_type = var.vm_instance_type[3]

  tags = var.global_tags
}
