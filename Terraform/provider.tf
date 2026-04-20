terraform {
<<<<<<< HEAD
  required_version = ">= 1.0"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
=======
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 6.0"
>>>>>>> 0106939376f3c39e316257bd52e210a3ab28c6c5
    }
  }
}

<<<<<<< HEAD
provider "aws" {
  region = var.aws_region

  default_tags {
    tags = {
      Environment = var.environment
      Project     = "demo-eks"
      ManagedBy   = "Terraform"
    }
  }
=======
# Configure the AWS Provider
provider "aws" {
  region = "us-east-1"
}

# Create a VPC
resource "aws_vpc" "example" {
  cidr_block = "10.0.0.0/16"
>>>>>>> 0106939376f3c39e316257bd52e210a3ab28c6c5
}
