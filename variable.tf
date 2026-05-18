variable "region" {
  description = "The AWS region to create resources in."
  type        = string
  default     = "us-west-2"
}
variable "S3_bucket_name" {
  description = "The name of the S3 bucket to create."
  type        = string
  default     = "my-learning-bucket"
}
variable "Environment" {
  description = "The environment for the resources."
  type        = string
  default     = "Dev"
}
variable "count" {
  description = "The number of S3 buckets to create."
  type        = number
  default     = 2
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