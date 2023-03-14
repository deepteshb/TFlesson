resource "aws_instance" "VM1" {
  ami           = var.list_of_ami_ids[0] # us-west-2
  instance_type = var.vm_instance_type[0]

  tags = merge(
    {"Name" = "Batch_VM1"}, var.global_tags
  )

}

resource "aws_instance" "VM2" {
  ami           = var.list_of_ami_ids[1] # us-west-2
  instance_type = var.vm_instance_type[3]

  tags = merge(
    {"Name" = "Batch_VM2"}, var.global_tags
  )
}


output "instance_volume_type" {
  value = aws_instance.VM1.root_block_device[0].volume_type
  
}