# TODO: Define the output variable for the lambda function.
output "lambda_function_arn" {
   value = "${aws_lambda_function.greet_lambda.arn}"
}

output "lambda_function_qualified_arn" {
   value = "${aws_lambda_function.greet_lambda.arn}"
}

output "lambda_function_invoke_arn" {
   value = "${aws_lambda_function.greet_lambda.invoke_arn}"
}

output "lambda_function_version" {
   value = "${aws_lambda_function.greet_lambda.version}"
}

output "lambda_function_last_modified" {
   value = "${aws_lambda_function.greet_lambda.last_modified}"
}

output "lambda_function_source_code_hash" {
   value = "${aws_lambda_function.greet_lambda.source_code_hash}"
}

output "lambda_function_invocation_result" {
  description = "String result of Lambda execution"
  value       = jsonencode(data.aws_lambda_invocation.greet_lambda.result)
}
