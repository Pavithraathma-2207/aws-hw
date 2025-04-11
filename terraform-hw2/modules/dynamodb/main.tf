resource "aws_dynamodb_table" "login_table" {
  name         = "UserLogins_Pavi"
  billing_mode = "PAY_PER_REQUEST"
  hash_key     = "UserID"
  range_key    = "Timestamp"

  attribute {
    name = "UserID"
    type = "S"
  }

  attribute {
    name = "Timestamp"
    type = "N"
  }
}
