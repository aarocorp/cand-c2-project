# https://www.terraform.io/docs/providers/aws/r/vpc.html
# https://www.terraform.io/docs/providers/aws/r/subnet.html
# https://linuxacademy.com/blog/linux-academy/using-count-for-cleaner-terraform/
# https://www.bogotobogo.com/DevOps/Terraform/Terraform-Introduction-AWS-loops.php

resource "aws_vpc" "main" {
  cidr_block       = var.config[var.vpc_cidr_block]
  instance_tenancy = var.config[var.vpc_tenancy]

  tags = {
    Name = var.config[var.vpc_name]
  }
}

resource "aws_subnet" "main_subnets" {
  count      = min(length(var.subnets_names), length(var.subnets_cidr_blocks))
  vpc_id     = aws_vpc.main.id
  cidr_block = var.subnets_cidr_blocks[count.index]

  tags = {
    Name = var.subnets_names[count.index]
  }
}
