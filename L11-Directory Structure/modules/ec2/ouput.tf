output "public_ip_of_vm" {
  value = aws_instance.web.public_ip
}