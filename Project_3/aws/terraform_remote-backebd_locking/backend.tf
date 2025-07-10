terraform {
  backend "s3" {
    bucket = "athira-s3-bucket-001"
    key    = "athira/terraform.tfstate"
    region = "us-east-1"
    dynamodb_table = "terraform_lock"
  }
}