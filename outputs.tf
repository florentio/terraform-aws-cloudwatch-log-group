output "log_group_arn" {
  value       = try(aws_cloudwatch_log_group.this[0].arn, "")
  description = "Log Group output"
}
