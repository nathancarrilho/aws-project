output "vpc_id" {
  description = "The ID of the VPC"
  value       = aws_vpc.main_vpc.id
}

output "public_subnet_a_id" {
  description = "The ID of the public subnet in us-east-1a"
  value       = aws_subnet.public_subnet_a.id
}

output "public_subnet_b_id" {
  description = "The ID of the public subnet in us-east-1b"
  value       = aws_subnet.public_subnet_b.id
}

output "private_subnet_a_id" {
  description = "The ID of the private subnet in us-east-1a"
  value       = aws_subnet.private_subnet_a.id
}

output "private_subnet_b_id" {
  description = "The ID of the private subnet in us-east-1b"
  value       = aws_subnet.private_subnet_b.id
}

output "nat_gateway_id" {
  description = "The ID of the NAT Gateway"
  value       = aws_nat_gateway.main_nat.id
}

output "load_balancer_dns" {
  description = "The DNS of the load balancer"
  value       = aws_lb.main_lb.dns_name
}