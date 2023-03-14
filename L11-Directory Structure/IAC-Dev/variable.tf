variable "default_tags" {
    type = map(any)
    default = {
      "Name" = "ABC"
      "Env"  = "PROD"
      "OWNER" = "Deeptesh"
    }
  
}