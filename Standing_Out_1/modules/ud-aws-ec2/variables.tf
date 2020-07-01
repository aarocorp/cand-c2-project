variable "ec2_config" {
  type = map
  default = {
    "ami"         = "ami-09d95fab7fff3776c"
    "volume_type" = "gp2"
    "volume_size" = 20
  }
}

variable "instances_type" {
  type    = list
  default = ["t2.micro", "t2.micro"]
}

variable "instances_names" {
  type    = list
  default = ["ec2_1", "ec2_2"]
}

variable "subnets_ids" {
  type    = list
  default = ["subnet_id_1", "subnet_id_2"]
}
