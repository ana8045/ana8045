variable "region" {
  description = "The AWS region to create resources in."
  type        = string
  default     = "us-east-1"
}
variable "Environment" {
  description = "The environment for the resources."
  type        = string
  default     = "Dev"
}
variable "VPC_count" {
  description = "The number of VPCs to create."
  type        = number
  default     = 1
}
variable "VPC" {
  description = "The name of the VPC to create."
  type        = string
  default     = "my-learning-vpc"
}
variable "private_subnet" {
  description = "The CIDR block for the private subnet."
  type        = string
  default     = "10.0.1.0/24"
}
variable "public_subnet" {
  description = "The CIDR block for the public subnet."
  type        = string
  default     = "10.0.2.0/24"
}
variable "VPC_cidr_block" {
  description = "The CIDR block for the VPC."
  type        = string
  default     = "10.0.0.0/16"
}
variable "aws_s3_bucket" {
  description = "The name of the S3 bucket to create."
  type        = string
  default     = "my-learning-s3-bucket"
}
variable "eks_cluster_learning" {
  description = "The name of the EKS cluster to create."
  type        = string
  default     = "my-learning-eks-cluster"
}

