# ---------------- VPC Outputs ----------------
output "vpc_id" {
  description = "The ID of the VPC"
  value       = module.vpc.vpc_id
}

output "vpc_cidr" {
  description = "CIDR block of the VPC"
  value       = module.vpc.cidr_block
}

# ---------------- EC2 Outputs ----------------
output "ec2_instance_id" {
  description = "The ID of the EC2 instance"
  value       = module.ec2.instance_id
}

output "ec2_public_ip" {
  description = "The public IP address of the EC2 instance"
  value       = module.ec2.public_ip
}

output "ec2_private_ip" {
  description = "The private IP address of the EC2 instance"
  value       = module.ec2.private_ip
}

output "ec2_name" {
  description = "The Name tag of the EC2 instance"
  value       = module.ec2.name
}

# ---------------- S3 Outputs ----------------
output "s3_bucket_name" {
  description = "The name of the S3 bucket"
  value       = module.s3.bucket_name
}

output "s3_bucket_arn" {
  description = "The ARN of the S3 bucket"
  value       = module.s3.arn
}
