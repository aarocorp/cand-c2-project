variable "access" {
  type = map
  default = {
    "access_key" = "< access_key >"
    "secret_key" = "< secret_key >"
  }
}

variable "provider_regions" {
  type    = list
  default = ["us-east-1", "us-east-2"]
}

# ud-aws-vpc variables
variable "ud_aws_vpc_config" {
  type = map
  default = {
    "vpc_name"       = "vpc-standout-udacity"
    "vpc_tenancy"    = "default"
    "vpc_cidr_block" = "10.0.0.0/16"
  }
}

variable "ud_aws_vpc_subnets_names" {
  type    = list
  default = ["sbnt-standout-udacity-1", "sbnt-standout-udacity-2"]
}

variable "ud_aws_vpc_subnets_cidr_blocks" {
  type    = list
  default = ["10.0.0.0/24", "10.0.1.0/24"]
}

# ud-aws-s3 variables
variable "ud_aws_s3_config" {
  type = map
  default = {
    "acl"    = "private"
    "region" = "us-east-1"
    "name"   = "s3-udacity-standout-bucket"
  }
}

variable "ud_aws_s3_region" {
  default = "us-east-1"
}

#ud-aws-ec2 variables
variable "ud_aws_ec2_config" {
  type = map
  default = {
    "volume_type" = "gp2"
    "volume_size" = 20
  }
}

variable "ud_aws_ec2_instances_ami_1" {
  type = string
  default = "ami-09d95fab7fff3776c"
}

variable "ud_aws_ec2_instances_ami_2" {
  type = string
  default = "ami-026dea5602e368e96"
}

variable "ud_aws_ec2_instances_type" {
  type    = list
  default = ["t2.micro", "t2.micro"]
}

variable "ud_aws_ec2_instances_names" {
  type    = list
  default = ["ec2_1", "ec2_2"]
}
