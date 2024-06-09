resource "aws_dynamodb_table" "terraform-lock-table" {
  name           = "terraform-lock-table"
  billing_mode   = "PROVISIONED"
  read_capacity  = 5
  write_capacity = 5
  hash_key       = "LockID" 

  attribute {
    name = "LockID"
    type = "S"
  }

  tags = {
    Name        = "terraform-lock-table"
    Environment = "develop"
  }
}