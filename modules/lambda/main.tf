resource "aws_lambda_function" "this" {
  function_name = var.function_name
  handler       = var.handler
  runtime       = var.runtime
  role          = var.role_arn

  filename      = var.filename

  source_code_hash = var.source_code_hash

  # Optional environment variables
  environment {
    variables = var.environment_variables
  }

  tags = var.tags
}
