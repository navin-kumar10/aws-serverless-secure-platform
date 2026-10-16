resource "aws_dynamodb_table" "tasks" {
  name = "${var.project}-tasks"
  billing_mode = "PAY_PER_REQUEST"
  hash_key = "pk"
  attribute { name = "pk" type = "S" }
}
resource "aws_s3_bucket" "frontend" { bucket = "${var.project}-frontend-lab" }
resource "aws_budgets_budget" "lab" {
  name = "${var.project}-lab"
  budget_type = "COST"
  limit_amount = "10"
  limit_unit = "USD"
  time_unit = "MONTHLY"
}
