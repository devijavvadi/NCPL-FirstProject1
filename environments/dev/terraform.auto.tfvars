instance_type = "t3.micro"
project       = "NCPL-Project-1"
environment   = "dev"
aws_region = "us-east-1"
bucket_name = "NCPL-Project-1-s3-bucket"
versioning_enabled = true
sse_algorithm = "AES256"
lifecycle_days = 30
vpc_cidr = "10.0.0.0/16"

public_subnet_cidrs = [
  "10.0.1.0/24",
  "10.0.2.0/24"
]
private_subnet_cidrs = [
  "10.0.11.0/24",
  "10.0.12.0/24"
]

availability_zones = [
  "us-east-1a",
  "us-east-1c"
]
user_name = "Devi-dev"

policy_json = {
  Version = "2012-10-17"
  Statement = [
    {
      Effect = "Allow"
      Action = ["s3:ListBucket"]
      Resource = "*"
    }
  ]
}