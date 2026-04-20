module "eks" {
  source = "terraform-aws-modules/eks/aws"
  version = "~> 19.0"

  cluster_name    = "demo-cluster"
  cluster_version = var.cluster_version

  vpc_id     = var.vpc_id
  subnet_ids = var.subnet_ids

  # Cluster endpoint access control
  cluster_endpoint_private_access = true
  cluster_endpoint_public_access  = true

  # Encryption at rest
  cluster_encryption_config = {
    provider_key_arn = aws_kms_key.eks.arn
    resources        = ["secrets"]
  }

  eks_managed_node_groups = {
    default = {
      instance_types = [var.node_instance_type]
      desired_size   = var.node_desired_size
      min_size       = 1
      max_size       = 4

      tags = {
        NodeGroup = "default"
      }
    }
  }

  tags = {
    Name = "demo-eks-cluster"
  }
}

# KMS key for cluster encryption
resource "aws_kms_key" "eks" {
  description             = "KMS key for EKS cluster encryption"
  deletion_window_in_days = 10
  enable_key_rotation     = true

  tags = {
    Name = "demo-eks-key"
  }
}

resource "aws_kms_alias" "eks" {
  name          = "alias/demo-eks"
  target_key_id = aws_kms_key.eks.key_id
}