resource "aws_vpc" "test" {
  cidr_block           = var.cidr_block
  enable_dns_support   = true
  enable_dns_hostnames = true
  instance_tenancy     = var.tenancy

  # tags = {
  #   Name          = var.name
  #   Terraform_Env = var.terraform_env
  #   Project       = "myTestProject"
  # }
}
