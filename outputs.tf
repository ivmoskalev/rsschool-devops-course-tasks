output "s3_bucket_name" {
  description = "The name of the S3 bucket"
  value       = aws_s3_bucket.example.bucket
}

output "iam_role_arn" {
  description = "The ARN of the IAM role for GitHub Actions"
  value       = aws_iam_role.GithubActionsRole.arn
}
