variable "vm_spec" {
  default     = "t2.micro"
  type        = string
  description = "Instance type that you wanted to specify"
}

variable "imageid" {
  default     = "ami-012b9156f755804f5"
  type        = string
  description = "Instance image that wanted to keep"
}

variable "sgp" {
  default     = ["sg-0fb1052b659369aa8"]
  type        = list(string)
  description = "Instance security group id"
}
variable "key" {
  default     = "admin"
  type        = string
  description = "Instance keypair"
}

variable "tagging" {
  default = {
    CreationDate = "15/09/2023"
    Owner        = "Thangadurai.Murugan@example.com"
    Costcentre   = "5000134"
    Location     = "Bangalore,India"
  }
}
