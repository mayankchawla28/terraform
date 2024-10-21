module "vpc" {
  source        = "./modules/vpc"
  cidr_block    = var.cidr_block
  name          = var.vpc_name
  terraform_env = var.terraform_env
}

module "subnets" {
  source               = "./modules/subnet"
  vpc_id               = module.vpc.vpc_id
  public_subnet_cidrs  = var.public_subnet_cidrs
  private_subnet_cidrs = var.private_subnet_cidrs
  public_subnet_count  = var.public_subnet_count
  private_subnet_count = var.private_subnet_count
  availability_zones   = var.availability_zones
  name                 = var.vpc_name
  terraform_env        = var.terraform_env
}

# module "internet_gateway_public" {
#   source        = "./modules/internet_gateway"
#   vpc_id        = module.vpc.vpc_id
#   name          = "${var.vpc_name}-public"
#   terraform_env = var.terraform_env
# }

# module "internet_gateway_private" {
#   source        = "./modules/internet_gateway"
#   vpc_id        = module.vpc.vpc_id
#   name          = "${var.vpc_name}-private"
#   terraform_env = var.terraform_env
# }

# module "elastic_ip" {
#   source = "./modules/elastic_ip"
#   # private_subnet_count = var.private_subnet_count
#   name          = var.vpc_name
#   vpc_id        = module.vpc.vpc_id
#   terraform_env = var.terraform_env
# }

# module "nat_gateway" {
#   source           = "./modules/nat_gateway"
#   vpc_id           = module.vpc.vpc_id
#   eip_id           = module.elastic_ip.eip_id
#   public_subnet_id = module.subnets.public_subnet_ids[0]
#   terraform_env    = var.terraform_env
#   name             = var.vpc_name
# }

module "route_table" {
  source     = "./modules/route_table"
  vpc_id     = module.vpc.vpc_id
  name       = var.vpc_name
  cidr_block = var.cidr_block
  # igw_id     = module.internet_gateway_public.internet_gateway_id
  # nat_gateway_id     = module.nat_gateway.nat_gateway_id
  public_subnet_ids  = module.subnets.public_subnet_ids
  private_subnet_ids = module.subnets.private_subnet_ids
  # eip_ids              = module.elastic_ip.eip_id # Pass EIP IDs to the route table module
  public_subnet_count  = var.public_subnet_count
  private_subnet_count = var.private_subnet_count
  terraform_env        = var.terraform_env
}

module "security_group" {
  source        = "./modules/security_group"
  vpc_id        = module.vpc.vpc_id
  cidr_block    = var.cidr_block
  sg_name       = "${var.vpc_name}-sg"
  terraform_env = var.terraform_env
}

module "aws_s3" {
  source         = "./modules/s3_bucket"
  s3_bucket_name = "${module.vpc.vpc_id}-bucket"
  terraform_env  = var.terraform_env
}
