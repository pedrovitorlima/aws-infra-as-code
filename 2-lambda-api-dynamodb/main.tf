terraform {
  backend "s3" {
    bucket         = "terraform-backend-infraascode-bucket"
    key            = "terraform.tfstate"
    region         = "ap-southeast-2"
    encrypt        = true
    dynamodb_table = "terraform-state-locking"
  }
}

resource "aws_dynamodb_table" "names" {
  name = "names"
  billing_mode = "PAY_PER_REQUEST"
  hash_key = "id"
  attribute {
    name = "id"
    type = "S"
  }
}