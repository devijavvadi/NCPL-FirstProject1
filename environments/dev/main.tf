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