module "ec2" {
  source = "../../modules/ec2"

  instance_type = var.instance_type
  env           = var.environment
  project       = var.project
}