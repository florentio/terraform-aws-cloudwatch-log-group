module "log_group" {
  source            = "../"
  log_group_name    = var.log_group_name
  retention_in_days = var.retention_in_days
  tags              = var.tags
}
