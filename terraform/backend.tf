terraform {
  backend "s3" {
    bucket = "terraform-backend-state-5646"
    key    = "eks/terraform.tfstate"
    region = "us-east-1"
  }
}
