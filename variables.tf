variable "create" {
  description = "Whether or not the log group resource will be created"
  default     = true
  type        = bool
}

variable "log_group_name" {
  description = "The name of the log group. If omitted, Terraform will assign a random, unique name"
  default     = null
  type        = string
}

variable "log_group_name_prefix" {
  description = "Unique name beginning with the specified prefix"
  default     = null
  type        = string
}

variable "retention_in_days" {
  description = "Specifies the number of days you want to retain log events in the specified log group"
  default     = 7
  type        = number
  validation {
    condition     = contains([0, 1, 3, 5, 7, 14, 30, 60, 90, 120, 180, 365, 400, 545, 731, 1827, 3653], var.retention_in_days)
    error_message = "Invalid value. Must be one of : [0, 1, 3, 5, 7, 14, 30, 60, 90, 120, 180, 365, 400, 545, 731, 1827, 3653]."
  }
}

variable "tags" {
  description = "A map of tags to assign to the resource"
  default     = {}
  type        = map(string)
}

variable "kms_key_id" {
  description = "ARN of the KMS Key to use when encrypting log data"
  default     = null
  type        = string
}
