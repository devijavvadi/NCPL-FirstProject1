module "ec2" {
  source = "../../modules/ec2"

  instance_type = var.instance_type
  environment   = var.environment
  project       = var.project
}

module "vpc" {
  source = "../../modules/vpc"

  vpc_cidr             = var.vpc_cidr
  public_subnet_cidrs  = var.public_subnet_cidrs
  private_subnet_cidrs = var.private_subnet_cidrs
  availability_zones   = var.availability_zones
  environment          = var.environment
}


module "s3" {
  source = "../../modules/s3"

  bucket_name        = var.bucket_name
  environment        = var.environment
  versioning_enabled = var.versioning_enabled
  sse_algorithm      = var.sse_algorithm
  lifecycle_days     = var.lifecycle_days
}

module "iam_user" {
  source = "../../modules/iam"

  user_name   = var.user_name
  environment = var.environment
  project     = var.project
  policy_json = var.policy_json
}