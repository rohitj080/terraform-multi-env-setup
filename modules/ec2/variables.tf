variable "ami_id" {
  description = "AMI ID for the EC2 instance"
  type        = string
}

variable "instance_type" {
  description = "EC2 instance type"
  type        = string
}

variable "subnet_id" {
  description = "Subnet ID where EC2 will be launched"
  type        = string
}

variable "sg_id" {
  description = "Security Group ID for EC2"
  type        = string
}

variable "key_name" {
  description = "Key pair name for SSH access"
  type        = string
}

variable "name" {
  description = "Name tag for the EC2 instance"
  type        = string
}

variable "environment" {
  description = "Environment (dev/uat/prod)"
  type        = string
}
