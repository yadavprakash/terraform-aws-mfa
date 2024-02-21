output "iam-arn" {
  value       = aws_iam_policy.enable_mfa.arn
  description = "The ARN (Amazon Resource Name) of the IAM policy with MFA (Multi-Factor Authentication) enabled."

}

output "tags_all" {
  value       = aws_iam_policy.enable_mfa.tags_all
  description = "All tags associated with the IAM policy with MFA enabled."

}