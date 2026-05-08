instance_type = "t2.micro"
project       = "NCPL-Project-prod"
environment   = "prod"
aws_region = "us-east-1"
bucket_name = "NCPL-Project-prod-s3-bucket"
versioning_enabled = true
sse_algorithm = "AES256"
lifecycle_days = 60
vpc_cidr = "10.0.0.0/20"

public_subnet_cidrs = [
  "10.0.3.0/24",
  "10.0.4.0/24"
]
private_subnet_cidrs = [
  "10.0.13.0/24",
  "10.0.14.0/24"
]

availability_zones = [
  "us-east-1a",
  "us-east-1c"
]

