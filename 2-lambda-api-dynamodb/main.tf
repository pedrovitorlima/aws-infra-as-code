terraform {
  backend "s3" {
    bucket         = "terraform-backend-infraascode-bucket"
    key            = "terraform.tfstate"
    region         = "ap-southeast-2"
    encrypt        = true
    dynamodb_table = "terraform-state-locking"
  }
}