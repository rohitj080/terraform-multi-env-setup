variable "aws_region" {
  description = "AWS region"
  type        = string
}

variable "vpc_cidr" {
  description = "VPC CIDR block"
  type        = string
}

variable "subnet_cidr" {
  description = "Public subnet CIDR block"
  type        = string
}

variable "availability_zone1" {
  description = "Availability Zone"
  type        = string
}

variable "instance_type" {
  description = "EC2 instance type"
  type        = string
}

variable "ami_id" {
  description = "AMI ID for EC2"
  type        = string
}

variable "environment" {
  description = "Deployment environment (dev, uat, prod)"
  type        = string
}
