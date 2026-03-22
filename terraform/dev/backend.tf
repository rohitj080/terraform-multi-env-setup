terraform {
  backend "s3" {
    bucket         = "my-terraform-state-bucket-1405"
    key            = "dev/terraform.tfstate"   # change per environment
    region         = "ap-south-1"
    dynamodb_table = "terraform-lock"
    encrypt        = true
  }
}
