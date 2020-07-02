variable "config" {
  type = map
  default = {
    "vpc_name"       = "vpc-standout-udacity"
    "vpc_tenancy"    = "default"
    "vpc_cidr_block" = "10.0.0.0/16"
  }
}

variable "subnets_names" {
  type    = list
  default = ["sbnt-standout-udacity-1", "sbnt-standout-udacity-2"]
}

variable "subnets_cidr_blocks" {
  type    = list
  default = ["10.0.0.0/24", "10.0.1.0/24"]
}
