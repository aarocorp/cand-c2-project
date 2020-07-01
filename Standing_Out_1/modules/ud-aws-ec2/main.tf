# https://www.terraform.io/docs/providers/aws/r/instance.html
resource "aws_instance" "main_ec2s" {
  count                  = min(length(var.instances_type), length(var.subnets_ids))
  ami                    = var.ec2_config[var.ami]
  instance_type          = var.instances_type[count.index]
  subnet_id              = var.subnets_ids[count.index]

  root_block_device {
   volume_type           = var.ec2_config[var.volume_type]
   volume_size           = var.ec2_config[var.volume_size]
  }

  tags = {
    Name                 = var.instances_names[count.index]
  }
}
