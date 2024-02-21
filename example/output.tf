output "iam-arn" {
  value       = module.mfa.iam-arn
  description = "The ARN (Amazon Resource Name) of the IAM policy with Multi-Factor Authentication (MFA) enabled."
}

output "tags" {
  value       = module.mfa.tags_all
  description = "All tags associated with the IAM policy with Multi-Factor Authentication (MFA) enabled."
}