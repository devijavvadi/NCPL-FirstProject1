variable "bucket_name" {
  type = string
}

variable "versioning_enabled" {
  type    = bool
}

variable "sse_algorithm" {
  type    = string
}

variable "lifecycle_days" {
  type    = number
}


variable "environment" {
  type    = string
}