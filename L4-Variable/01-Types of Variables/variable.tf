variable "instance_ami_id" {
  type    = string
  #default = "ami-0cca134ec43cf708f"
}



variable "instance_type" {
  # type = list(string)
  #list is always indexed but the index starts at 0
  # index value = [0,1,2,3,4]
  # actual value [1,2,3,4,5]
  default = [ "t2.micro", "t2.large" ]
}

variable "create_instances" {
    type = bool
    default = true
  
}

variable "default_tags" {
    type = map
    default = {
        "env" = "dev"
        "owner" = "deeptesh"
    }
  
}
