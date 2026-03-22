provider "aws" {
  region = var.aws_region
}

# ---------------- S3 (Terraform state bucket) ----------------
module "s3" {
  source      = "../../modules/s3"
  bucket_name = "test-poc-prod-kivi-tfstate"
  environment = var.environment
}

# ---------------- VPC ----------------
module "vpc" {
  source      = "../../modules/vpc"
  cidr_block  = var.vpc_cidr
  subnet_cidr = var.subnet_cidr
  az          = var.availability_zone1
  name        = "${var.environment}-vpc"   # dynamic env
  environment = var.environment
}

# ---------------- EC2 ----------------
module "ec2" {
  source        = "../../modules/ec2"
  ami_id        = var.ami_id
  instance_type = var.instance_type
  subnet_id     = module.vpc.subnet_id
  sg_id         = module.vpc.sg_id
  key_name      = "my-key"
  name          = "${var.environment}-ec2-web"   # dynamic env
  environment   = var.environment
}
