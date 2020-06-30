# TODO: Define the variable for aws_region
variable "region" {
   default = "us-east-1"
}

variable "access" {
   type = map
   default = {
      "access_key" = "< access_key >"
      "secret_key" = "< secret_key >"
   }
}

variable "access_key" {
   default = "access_key"
}

variable "secret_key" {
   default = "secret_key"
}

variable "vpc_id" {
   default = "vpc-0896f0580617426b6"
}

variable "subnet_id" {
   default = "subnet-0d302dd336919c3e5"
}

variable "ami" {
   default = "ami-09d95fab7fff3776c"
}

data "aws_lambda_invocation" "greet_lambda" {
  function_name = "${aws_lambda_function.greet_lambda.function_name}"
  input = <<JSON
{
  "dummy": "data"
}
JSON
}
