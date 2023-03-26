resource "aws_instance" "ec2" {
  for_each = var.name
  ami           = "ami-05afd67c4a44cc983" # us-west-2
  instance_type = "t2.micro"
  subnet_id     = var.subnet_id

  tags = merge(var.default_tags, {
    #merge is joining to maps
    #join is concatenation of values in a list
    Name = "${join("-",var.servernamelistsyntax)}-${var.name[each.key]}"
  })

}

output "chintuip" {
    value = aws_instance.ec2["server1"].private_ip
  
}

output "chintuname" {
    # lookup(map, key, default)
   value = lookup(var.name, "server6","deeptesh")
}


output "nameofoneserver" {
  value = aws_instance.ec2[*]
    }
