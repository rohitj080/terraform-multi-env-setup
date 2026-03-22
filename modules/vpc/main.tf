resource "aws_vpc" "multi_env_vpc" {
  cidr_block = var.cidr_block

  tags = {
    Name        = var.name
    Environment = var.environment
  }
}

resource "aws_subnet" "public_subnet1" {
  vpc_id                  = aws_vpc.multi-env-vpc.id
  cidr_block              = var.public_subnet1_cidr
  availability_zone       = var.availability_zone1
  map_public_ip_on_launch = true

  tags = {
    Name        = "${var.name}-public-subnet1"
    Environment = var.environment
  }
}
