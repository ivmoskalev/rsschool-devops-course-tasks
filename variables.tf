variable "aws_region" {
  description = "The AWS region to deploy resources in"
  type        = string
  default     = "us-east-1" # optional default value
}

variable "aws_account_id" {
  description = "Your AWS Account ID"
  type        = string
}

variable "github_repository_name" {
  description = "GitHub repository name to associate with IAM role"
  type        = string
}