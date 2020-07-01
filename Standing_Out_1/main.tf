# Use of tfvars files
# For the exercise I used a tfvars where my access_key and secret_key where initialized.
# Thoses files were not pushed in the repo ... So to test the code you should give those inputs variables (see root > tfvars > access.tfvars for template)

# Provider doesn't seem to support loop ... so it my ugly workaround (to keep it simple)
# https://github.com/hashicorp/terraform/issues/19932

# Resources
# https://learn.hashicorp.com/terraform/modules/creating-modules
# https://www.terraform.io/docs/configuration/modules.html
# https://www.terraform.io/docs/configuration/providers.html#multiple-provider-instances

provider "aws" {
  alias      = "east_1"
  access_key = var.access[var.access_key]
  secret_key = var.access[var.secret_key]
  region     = "us-east-1"
}

provider "aws" {
  alias      = "east_2"
  access_key = var.access[var.access_key]
  secret_key = var.access[var.secret_key]
  region     = "us-east-2"
}

# VPC Creation
module "ud_aws_vpc_1" {
  providers = {
    aws = aws.east_1
  }
  source              = "./modules/ud-aws-vpc"
  config              = var.ud_aws_vpc_config
  subnets_names       = var.ud_aws_vpc_subnets_names
  subnets_cidr_blocks = var.ud_aws_vpc_subnets_cidr_blocks
}

module "ud_aws_vpc_2" {
  providers = {
    aws = aws.east_2
  }
  source              = "./modules/ud-aws-vpc"
  config              = var.ud_aws_vpc_config
  subnets_names       = var.ud_aws_vpc_subnets_names
  subnets_cidr_blocks = var.ud_aws_vpc_subnets_cidr_blocks
}

# EC2 creation
module "ud_aws_ec2_1" {
  providers = {
    aws = aws.east_1
  }
  source          = "./modules/ud-aws-ec2"
  ec2_config      = var.ud_aws_ec2_config
  instances_ami  = var.ud_aws_ec2_instances_ami_1
  instances_type  = var.ud_aws_ec2_instances_type
  instances_names = var.ud_aws_ec2_instances_names
  subnets_ids     = module.ud_aws_vpc_1.subnets_ids
}

module "ud_aws_ec2_2" {
  providers = {
    aws = aws.east_2
  }
  source          = "./modules/ud-aws-ec2"
  ec2_config      = var.ud_aws_ec2_config
  instances_ami  = var.ud_aws_ec2_instances_ami_2
  instances_type  = var.ud_aws_ec2_instances_type
  instances_names = var.ud_aws_ec2_instances_names
  subnets_ids     = module.ud_aws_vpc_2.subnets_ids
}

# S3 Creation
module "ud_aws_s3_1" {
  providers = {
    aws = aws.east_1
  }
  source    = "./modules/ud-aws-s3"
  s3_config = var.ud_aws_s3_config
}

module "ud_aws_s3_2" {
  providers = {
    aws = aws.east_2
  }
  source    = "./modules/ud-aws-s3"
  s3_config = var.ud_aws_s3_config
}
