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
  default     = "10.0.0.0/16"
}



variable "public_subnet_cidrs" {
  type = list(string)
  # No default value here
}


//variable "public_subnet_cidrs" {
//  type = list(string)

 // default = [
 //   "10.0.1.0/24",
 //   "10.0.2.0/24"
//  ]
//} 


variable "private_subnet_cidrs" {
 type  = list(string)

  default = [
     "10.0.11.0/24",
     "10.0.12.0/24"
  ]
}

variable "availability_zones" {
  type = list(string)

  default = [
     "us-east-1a",
     "us-east-1b"
  ]
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

