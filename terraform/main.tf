module "eks" {
  source = "terraform-aws-modules/eks/aws"
  version = "~> 20.0"
  enable_cluster_creator_admin_permissions = true

  cluster_name    = "demo-cluster"
  cluster_version = var.cluster_version

  vpc_id     = var.vpc_id
  subnet_ids = var.subnet_ids

  # Cluster endpoint access control
  cluster_endpoint_private_access = true
  cluster_endpoint_public_access  = true

 
}


 
