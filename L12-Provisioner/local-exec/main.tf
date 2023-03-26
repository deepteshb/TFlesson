variable "key_pair_name" {
  default = "connectionKey"

}

resource "aws_instance" "web-1" {
  ami           = "ami-0e742cca61fb65051" # Linux OS
  instance_type = "t2.micro"
 /*  user_data = <<EOF
  #!/bin/bash
  sudo yum install ansible
  sudo yum install python
  EOF

   connection {
      type        = "ssh"
      user        = "ec2-user"
      private_key = ""
      host        = self.public_ip
    }
  /*  connection {
    type     = "ssh"
    user     = "ec2-user"
    password = ""
    host     = self.public_ip
  } */
  /* provisioner "local-exec" {
    #command = "echo web1 is Ready."
    command    = "echo ${self.public_ip} > inventory.yaml"
    on_failure = continue

  }
 */
  /* provisioner "file" {

    source      = "myapp.conf"
    destination = "/etc/myapp.conf"

  }

  provisioner "remote-exec" {
    inline = ["sudo apt -y install nginx"]


  } */

}

resource "aws_instance" "web-2" {
  ami           = "ami-0376ec8eacdf70aae" # Linux OS
  instance_type = "t2.micro"

  tags = {
    "Name" = "web2"
  }
}
	



output "publicip" {
  value = aws_instance.web-1.public_ip

}



