output "cluster_name" {
  description = "The name of the EKS cluster."
  value       = aws_eks_cluster.eks_cluster.id
}

output "oidc" {
  description = "The OIDC issuer URL of the EKS cluster, used for IAM role federation."
  value       = aws_eks_cluster.eks_cluster.identity[0].oidc[0].issuer
}

output "certificate_authority" {
  description = "Base64-encoded certificate authority data for the EKS cluster."
  value       = aws_eks_cluster.eks_cluster.certificate_authority[0].data
}

output "endpoint" {
  description = "The API server endpoint URL of the EKS cluster."
  value       = aws_eks_cluster.eks_cluster.endpoint
}
