variable "cidr_block" {
  type = string
}

variable "public_subnet1_cidr" {
  type = string
}

variable "availability_zone1" {
  type = string
}

variable "name" {
  type    = string
  default = "multi-env-github-actions-vpc"
}

variable "environment" {
  type = string
}
