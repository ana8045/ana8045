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


  tags = {
    Name = "demo-eks-cluster"
  }
}

         
  tags = {
    Name = "demo-eks-key"
  }
}

resource "aws_kms_alias" "eks" {
  name          = "alias/demo-eks"
  target_key_id = aws_kms_key.eks.key_id
}
