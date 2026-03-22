terraform {
  backend "s3" {
    bucket         = "test-poc-aus-tfstate-dev"  # unique per env
    key            = "dev/terraform.tfstate"        # unique per env
    region         = "ap-south-1"
    dynamodb_table = "terraform-lock"                              # same for all envs
    encrypt        = true
  }
}
