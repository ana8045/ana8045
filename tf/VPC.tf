resource "aws_vpc" "My_learning" {
  cidr_block = var.VPC_cidr_block

  tags = {
    Name        = var.VPC
    Environment = var.Environment
  }
}

resource "aws_subnet" "private_subnet" {
  vpc_id     = aws_vpc.My_learning.id
  cidr_block = var.private_subnet

  tags = {
    Name        = "${var.VPC}-private-subnet"
    Environment = var.Environment
  }
}

resource "aws_subnet" "public_subnet" {
  vpc_id     = aws_vpc.My_learning.id
  cidr_block = var.public_subnet

  tags = {
    Name        = "${var.VPC}-public-subnet"
    Environment = var.Environment
  }
}