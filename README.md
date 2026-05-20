# Terraform

This project provisions a production-ready **Amazon EKS** cluster on AWS using Terraform. It is structured into reusable modules that cover the full infrastructure stack, including networking, the EKS control plane, managed node groups, and the AWS Load Balancer Controller.

## Architecture

```mermaid
graph TD
    network["<b>network</b><br/>VPC · Public &amp; Private Subnets<br/>IGW · NAT Gateways · Route Tables"]
    cluster["<b>cluster</b><br/>EKS Control Plane<br/>IAM Roles"]
    node_group["<b>managed-node-group</b><br/>EC2 Worker Nodes"]
    alb["<b>aws-load-balancer-controller</b><br/>Helm Release · IAM Role (IRSA)"]

    network -->|"subnet_pub_1a/1b"| cluster
    network -->|"subnet_priv_1a/1b"| node_group
    network -->|"vpc_id"| alb
    cluster -->|"cluster_name"| node_group
    cluster -->|"cluster_name · oidc"| alb
```

<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
| ---- | ------- |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | 6.45.0 |
| <a name="requirement_helm"></a> [helm](#requirement\_helm) | 3.1.1 |
| <a name="requirement_kubernetes"></a> [kubernetes](#requirement\_kubernetes) | 3.1.0 |

## Providers

No providers.

## Modules

| Name | Source | Version |
| ---- | ------ | ------- |
| <a name="module_eks_aws_load_balancer_controller"></a> [eks\_aws\_load\_balancer\_controller](#module\_eks\_aws\_load\_balancer\_controller) | ./modules/aws-load-balancer-controller | n/a |
| <a name="module_eks_cluster"></a> [eks\_cluster](#module\_eks\_cluster) | ./modules/cluster | n/a |
| <a name="module_eks_managed_node_group"></a> [eks\_managed\_node\_group](#module\_eks\_managed\_node\_group) | ./modules/managed-node-group | n/a |
| <a name="module_eks_network"></a> [eks\_network](#module\_eks\_network) | ./modules/network | n/a |

## Resources

No resources.

## Inputs

| Name | Description | Type | Default | Required |
| ---- | ----------- | ---- | ------- | :------: |
| <a name="input_cidr_block"></a> [cidr\_block](#input\_cidr\_block) | Networking CIDR block to be used for the VPC | `string` | n/a | yes |
| <a name="input_project_name"></a> [project\_name](#input\_project\_name) | Project name to be used in tags | `string` | n/a | yes |
| <a name="input_region"></a> [region](#input\_region) | AWS region to create the resources | `string` | n/a | yes |
| <a name="input_tags"></a> [tags](#input\_tags) | A map of tags to add to all AWS resources | `map` | n/a | yes |

## Outputs

No outputs.
<!-- END_TF_DOCS -->
