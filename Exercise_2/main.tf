# Use of tfvars files
# For the exercise I used a tfvars where my access_key and secret_key where initialized.
# Thoses files were not pushed in the repo ... So to test the code you should give those inputs variables (see root > tfvars > access.tfvars for template)

# Resources
# https://www.terraform.io/docs/providers/aws/r/lambda_function.html
# https://docs.aws.amazon.com/lambda/latest/dg/API_CreateFunction.html#SSS-CreateFunction-request-Runtime
# https://www.terraform.io/docs/providers/aws/r/iam_role.html#assume_role_policy
# https://www.terraform.io/docs/providers/aws/d/iam_policy.html
# https://www.terraform.io/docs/providers/aws/r/iam_role_policy_attachment.html
# https://www.terraform.io/docs/providers/aws/d/lambda_invocation.html

provider "aws" {
  access_key = var.access[var.access_key]
  secret_key = var.access[var.secret_key]
  region     = var.region
}

resource "aws_iam_role" "greet_lambda" {
    name = "greet_lambda"
    assume_role_policy = <<EOF
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Principal": {
        "Service": "lambda.amazonaws.com"
      },
      "Effect": "Allow",
      "Sid": ""
    }
  ]
}
EOF
}

resource "aws_iam_role_policy_attachment" "aws-lambda-basic-execution-policy" {
    role       = aws_iam_role.greet_lambda.name
    policy_arn = "arn:aws:iam::aws:policy/service-role/AWSLambdaBasicExecutionRole"
}

resource "aws_lambda_function" "greet_lambda" {
  filename           = "greet_lambda.zip"
  function_name      = "greet_lambda"
  handler            = "greet_lambda.lambda_handler"
  source_code_hash   = filebase64sha256("greet_lambda.zip")
  runtime            = "python3.8"
  role               = aws_iam_role.greet_lambda.arn
  environment {
    variables = {
      greeting = "Udacity Greetings"
    }
  }
}
