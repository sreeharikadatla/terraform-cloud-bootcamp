module "vpc" {
  source          = "./modules/vpc"
  vpc_cidr        = var.vpc_cidr
  public_subnets  = var.public_subnets
  private_subnets = var.private_subnets
  region          = var.region
  availability_zones = data.aws_availability_zones.available.names
}

module "ec2" {
  source             = "./modules/ec2"
  public_subnet_id   = module.vpc.public_subnet_ids[0]
  private_subnet_id  = module.vpc.private_subnet_ids[0]
  vpc_id             = module.vpc.vpc_id
  key_name           = var.key_name
}

module "rds" {
  source             = "./modules/rds"
  subnet_ids         = module.vpc.private_subnet_ids
  vpc_id             = module.vpc.vpc_id
  db_username        = var.db_username
  db_password        = var.db_password
}
