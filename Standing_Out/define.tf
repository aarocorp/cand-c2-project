variable "access_key" {
   default = "access_key"
}

variable "secret_key" {
   default = "secret_key"
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

variable "instance_type" {
   type    = string
   default = "instance_type"
}

variable "volume_type" {
   type    = string
   default = "volume_type"
}

variable "volume_size" {
   type    = string
   default = "volume_size"
}
