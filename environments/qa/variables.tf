variable "instance_type" {
  type = string
}

variable "project" {
  type = string
}

variable "environment" {
  type = string
}

variable "aws_region" {
  type = string
}

variable "vpc_cidr" {
  type = string
}



variable "public_subnet_cidrs" {
  type = list(string)
  # No default value here
}
 


variable "private_subnet_cidrs" {
 type  = list(string)

}

variable "availability_zones" {
  type = list(string)

}
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

