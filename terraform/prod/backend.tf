terraform {
  backend "s3" {
    bucket         = "test-poc-jordan-tfstate-${var.environment}"  # unique per env
    key            = "${var.environment}/terraform.tfstate"        # unique per env
    region         = "ap-south-1"
    dynamodb_table = "terraform-lock"                              # same for all envs
    encrypt        = true
  }
}
