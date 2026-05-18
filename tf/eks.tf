resource "aws_eks_cluster"  "eks_cluster" {
  name     = var.eks_cluster_learning
  role_arn = aws_iam_role.eks_cluster_role.arn

  vpc_config {
    subnet_ids = [aws_subnet.private_subnet.id, aws_subnet.public_subnet.id]
  }

  tags = {
    Name        = var.eks_cluster_learning
    Environment = var.Environment
  }
  
}