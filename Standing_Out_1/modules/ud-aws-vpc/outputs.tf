# VPC outputs
output "vpc_arn" {
   value = "${aws_vpc.main.arn}"
}

output "vpc_id" {
   value = "${aws_vpc.main.id}"
}

output "vpc_default_route_table_id" {
   value = "${aws_vpc.main.default_route_table_id}"
}

output "vpc_owner_id" {
   value = "${aws_vpc.main.owner_id}"
}

# Subnets outputs
output "subnets_arns" {
   value = "${aws_subnet.main_subnets.*.arn}"
}

output "subnets_ids" {
   value = "${aws_subnet.main_subnets.*.id}"
}

output "subnets_owner_ids" {
   value = "${aws_subnet.main_subnets.*.owner_id}"
}
