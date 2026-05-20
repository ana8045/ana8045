resource "aws_s3_bucket" "My_learning" {
    bucket = var.S3_bucket_name
    for_each = toset(["${var.S3_bucket_name}-1", "${var.S3_bucket_name}-2", "${var.S3_bucket_name}-3"])
    tags = {
      Name        = var.S3_bucket_name
      Environment = var.Environment
    }
  
}
