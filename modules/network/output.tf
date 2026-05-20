output "subnet_pub_1a" {
  description = "ID of the public subnet in availability zone us-east-1a."
  value       = aws_subnet.eks_public_subnet_1a.id
}

output "subnet_pub_1b" {
  description = "ID of the public subnet in availability zone us-east-1b."
  value       = aws_subnet.eks_public_subnet_1b.id
}

output "subnet_priv_1a" {
  description = "ID of the private subnet in availability zone us-east-1a."
  value       = aws_subnet.eks_private_subnet_1a.id
}

output "subnet_priv_1b" {
  description = "ID of the private subnet in availability zone us-east-1b."
  value       = aws_subnet.eks_private_subnet_1b.id
}

output "vpc_id" {
  description = "ID of the VPC created for the EKS cluster."
  value       = aws_vpc.eks_vpc.id
}
