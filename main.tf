resource "aws_cloudwatch_log_group" "this" {
  count             = var.create ? 1 : 0
  name              = var.log_group_name
  name_prefix       = var.log_group_name_prefix
  retention_in_days = var.retention_in_days
  kms_key_id        = var.kms_key_id
  tags              = var.tags
}
