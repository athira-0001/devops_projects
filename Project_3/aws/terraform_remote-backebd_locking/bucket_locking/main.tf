#Creating s3 bucket for remote backend and dynamodb table for locking statefile

provider "aws" {
  region = "us-east-1"
}
resource "aws_dynamodb_table" "terraform_lock" {
  name = "terraform_lock"
  billing_mode = "PAY_PER_REQUEST"
  hash_key = "LockID"
  attribute {
    name = "LockID"
    type = "S"
  }
}
resource "aws_s3_bucket" "s3_bucket" {
  bucket = "athira-s3-bucket-001"
}