
output "ipaddress_of_Web1" {
  value = aws_instance.web1.public_ip
}

output "ipaddress_of_Web2" {
  value = aws_instance.web2.public_ip
}

output "ipaddress_of_Web3" {
  #value = <resource_type>.<identifier>.<attribute>
  value = aws_instance.web3.public_ip
}

output "all_ips" {
    value = [aws_instance.web1.public_ip, aws_instance.web2.public_ip, aws_instance.web3.public_ip]
  
}