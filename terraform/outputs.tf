output "dynamodb_table" { value = aws_dynamodb_table.tasks.name }
output "frontend_bucket" { value = aws_s3_bucket.frontend.bucket }
