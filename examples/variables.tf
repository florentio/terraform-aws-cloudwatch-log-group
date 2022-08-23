variable "log_group_name" {
  description = "The name of the log group"
  default     = "/aws/test/log"
  type        = string
}

variable "retention_in_days" {
  description = "Number of days to retain log events in the specified log group"
  default     = 7
  type        = number
}

variable "tags" {
  description = "Default tags"
  default     = {}
  type        = map(string)
}
