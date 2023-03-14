variable "ami" {
    default = "ami-0f8ca728008ff5af4"
  
}
variable "instance" {
}

variable "vm_tags" {
    type = map(any)
    
}