terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "4.57.0"
    }
  }
}

provider "aws" {
  # Configuration options
}

module "vm-one" {
    source = "../modules/ec2"
    VM_Name = "VM-1"
    instance = "t2.large"
}

module "vm-two" {
    source = "../modules/ec2"
    VM_Name = "VM-2"
    instance = "t2.large"
  
}

module "vm-three" {
    source = "../modules/ec2"
    VM_Name = "VM-3"
    instance = "t2.large"
}


output "vm-one-ip" {
    value = module.vm-one.public_ip_of_vm
  
}

output "vm-two-ip" {
    value = module.vm-two.public_ip_of_vm
  
}
output "vm-three-ip" {
    value = module.vm-three.public_ip_of_vm
  
}