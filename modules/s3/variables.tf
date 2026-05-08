variable "bucket_name" {
  string = "NCPL-Project-1-s3-bucket"
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
