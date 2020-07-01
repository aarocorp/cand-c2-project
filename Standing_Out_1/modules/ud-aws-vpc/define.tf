variable "access_key" {
   default = "access_key"
}

variable "secret_key" {
   default = "secret_key"
}

variable "vpc_name" {
   type    = string
   default = "vpc_name"
}

variable "vpc_tenancy" {
   type    = string
   default = "vpc_tenancy"
}

variable "vpc_cidr_block" {
   type    = string
   default = "vpc_cidr_block"
}

variable "subnet_names" {
   type    = string
   default = "subnet_names"
}

variable "subnets_cidr_block" {
   type    = string
   default = "subnets_cidr_block"
}

variable "subnet_count" {
   type    = string
   default = "subnet_count"
}

variable "ami" {
   type    = string
   default = "ami"
}
