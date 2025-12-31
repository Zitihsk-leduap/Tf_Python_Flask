variable "bucket_name" {
  type        = string
  description = "Remote state bucket name"
  default     = "kshitiz-remote-state-bucket"
}

variable "name" {
  type        = string
  description = "Name tag for the S3 bucket"
  default     = "Dev-Project"
}

variable "environment" {
  type        = string
  description = "Environment tag for the S3 bucket"
  default     = "dev-1"
}
