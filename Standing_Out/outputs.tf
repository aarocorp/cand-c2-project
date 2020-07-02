# VPC outputs
output "ud_aws_vpc_1_arn" {
   value = module.ud_aws_vpc_1.vpc_arn
}

output "ud_aws_vpc_1_id" {
   value = module.ud_aws_vpc_1.vpc_id
}

output "ud_aws_vpc_1_default_route_table_id" {
   value = module.ud_aws_vpc_1.vpc_default_route_table_id
}

output "ud_aws_vpc_1_owner_id" {
   value = module.ud_aws_vpc_1.vpc_owner_id
}

# Subnets outputs
output "ud_aws_vpc_1_subnets_arns" {
   value = module.ud_aws_vpc_1.subnets_arns
}

output "ud_aws_vpc_1_subnets_ids" {
   value = module.ud_aws_vpc_1.subnets_ids
}

output "ud_aws_vpc_1_subnets_owner_ids" {
   value = module.ud_aws_vpc_1.subnets_owner_ids
}

output "ud_aws_vpc_2_arn" {
   value = module.ud_aws_vpc_2.vpc_arn
}

output "ud_aws_vpc_2_id" {
   value = module.ud_aws_vpc_2.vpc_id
}

output "ud_aws_vpc_2_default_route_table_id" {
   value = module.ud_aws_vpc_2.vpc_default_route_table_id
}

output "ud_aws_vpc_2_owner_id" {
   value = module.ud_aws_vpc_2.vpc_owner_id
}

# Subnets outputs
output "ud_aws_vpc_2_subnets_arns" {
   value = module.ud_aws_vpc_2.subnets_arns
}

output "ud_aws_vpc_2_subnets_ids" {
   value = module.ud_aws_vpc_2.subnets_ids
}

output "ud_aws_vpc_2_subnets_owner_ids" {
   value = module.ud_aws_vpc_2.subnets_owner_ids
}

# EC2 outputs
output "ud_aws_ec2_1_arns" {
   value = module.ud_aws_ec2_1.ec2s_arns
}

output "ud_aws_ec2_1_ids" {
   value = module.ud_aws_ec2_1.ec2s_ids
}

output "ud_aws_ec2_1_availability_zones" {
   value = module.ud_aws_ec2_1.ec2s_availability_zones
}

output "ud_aws_ec2_1_privates_ips" {
   value = module.ud_aws_ec2_1.ec2s_privates_ips
}

output "ud_aws_ec2_1_instances_states" {
   value = module.ud_aws_ec2_1.ec2s_instances_states
}

output "ud_aws_ec2_1_instances_ebs_block_devices" {
   value = module.ud_aws_ec2_1.ec2s_instances_ebs_block_devices
}

output "ud_aws_ec2_2_arns" {
   value = module.ud_aws_ec2_2.ec2s_arns
}

output "ud_aws_ec2_2_ids" {
   value = module.ud_aws_ec2_2.ec2s_ids
}

output "ud_aws_ec2_2_availability_zones" {
   value = module.ud_aws_ec2_2.ec2s_availability_zones
}

output "ud_aws_ec2_2_privates_ips" {
   value = module.ud_aws_ec2_2.ec2s_privates_ips
}

output "ud_aws_ec2_2_instances_states" {
   value = module.ud_aws_ec2_2.ec2s_instances_states
}

output "ud_aws_ec2_2_instances_ebs_block_devices" {
   value = module.ud_aws_ec2_2.ec2s_instances_ebs_block_devices
}
# S3 outputs
output "ud_aws_s3_1_arns" {
   value = module.ud_aws_s3_1.s3_arns
}

output "ud_aws_s3_1_ids" {
   value = module.ud_aws_s3_1.s3_ids
}

output "ud_aws_s3_1_bucket_domain_name" {
   value = module.ud_aws_s3_1.s3_bucket_domain_name
}

output "ud_aws_s3_1_bucket_regional_domain_name" {
   value = module.ud_aws_s3_1.s3_bucket_regional_domain_name
}

output "ud_aws_s3_2_arns" {
   value = module.ud_aws_s3_2.s3_arns
}

output "ud_aws_s3_2_ids" {
   value = module.ud_aws_s3_2.s3_ids
}

output "ud_aws_s3_2_bucket_domain_name" {
   value = module.ud_aws_s3_2.s3_bucket_domain_name
}

output "ud_aws_s3_2_bucket_regional_domain_name" {
   value = module.ud_aws_s3_2.s3_bucket_regional_domain_name
}
