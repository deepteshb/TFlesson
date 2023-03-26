variable "subnet_id" {
    default = "subnet-0cc941e1be9327a31"
  
}

variable "name" {
    default = {
        "server1" = "chintu"
        "server2" = "chunmun"
        "server3" = "dolly"
        "server4" = "mridang"
        "server5" = "mridul"
    }
}

variable "default_tags" {
    default = {
    Env = "Prod"
    CreatedBy = "Deeptesh"
    }
}

variable "servernamelistsyntax" {
  default = ["DC","PROD"]
}