provider "aws" {
  region = var.aws_region
}

module "vpc" {
  source = "../../modules/vpc"

  cidr_block  = var.vpc_cidr
  subnet_cidr = var.subnet_cidr
  az          = var.availability_zone1
  name        = "dev-vpc"
}

module "ec2" {
  source = "../../modules/ec2"

  ami_id        = var.ami_id
  instance_type = var.instance_type
  subnet_id     = module.vpc.subnet_id
  sg_id         = module.vpc.sg_id
  key_name      = "my-key"
  name          = "dev-ec2"
}
