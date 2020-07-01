# EC2 outputs
output "ec2s_arns" {
   value = "${aws_instance.main_ec2s.*.arn}"
}

output "ec2s_ids" {
   value = "${aws_instance.main_ec2s.*.id}"
}

output "ec2s_availability_zones" {
   value = "${aws_instance.main_ec2s.*.availability_zone}"
}

output "ec2s_privates_ips" {
   value = "${aws_instance.main_ec2s.*.private_ip}"
}

output "ec2s_instances_states" {
   value = "${aws_instance.main_ec2s.*.instance_state}"
}

output "ec2s_instances_ebs_block_devices" {
   value = "${aws_instance.main_ec2s.*.root_block_device}"
}
