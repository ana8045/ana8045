resource "aws_s3_bucket" "My_learning" {
  for_each = toset([
    "${var.S3_bucket_name}-1",
    "${var.S3_bucket_name}-2",
    "${var.S3_bucket_name}-3"
  ])

  bucket = each.key

  tags = {
    Name        = each.key
    Environment = var.Environment
  }
}
