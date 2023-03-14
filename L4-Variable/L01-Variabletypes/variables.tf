/* variable "instance_ami_id1" {
   default = "ami-0e742cca61fb65051"
    description = "Enter the ami id for this VM"
    sensitive = false
} */
variable "vm_instance_type" {
    default = ["t2.micro", "t2.small", "t2.medium", "t2.large"]
}

/* variable "instance_ami_id2" {
   default = "ami-0f8ca728008ff5af4"
    description = "Enter the ami id for this VM"
    sensitive = false
} */

/* variable "vm_instance_type2" {
    default = "t2.small"
} */

variable "list_of_ami_ids" {
    type = list(string)
    default = [ "ami-0f8ca728008ff5af4","ami-0e742cca61fb65051" ]
  
}

variable "global_tags" {
    default = {
        "env" = "prod"
        "business_unit" = "coe"

    }
  
}

