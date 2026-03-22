terraform {
  backend "s3" {
    bucket         = "test-poc-jordan-tfstate-${var.environment}"
    key            = "dev/terraform.tfstate"   # change per environment
    region         = "ap-south-1"
    dynamodb_table = "terraform-lock"
    encrypt        = true
  }
}
