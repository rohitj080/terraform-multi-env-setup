output "subnet_id" {
  value = aws_subnet.public_subnet1.id
}

output "vpc_id" {
  value = aws_vpc.multi-env-vpc.id
}
