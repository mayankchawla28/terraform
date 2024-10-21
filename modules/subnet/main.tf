resource "aws_subnet" "public" {
  count = var.public_subnet_count

  vpc_id            = var.vpc_id
  cidr_block        = element(var.public_subnet_cidrs, count.index)
  availability_zone = element(var.availability_zones, count.index)

  # tags = {
  #   Name          = "${var.name}-public-subnet-${count.index}"
  #   Terraform_Env = var.terraform_env
  # }
}

resource "aws_subnet" "private" {
  count = var.private_subnet_count

  vpc_id            = var.vpc_id
  cidr_block        = element(var.private_subnet_cidrs, count.index)
  availability_zone = element(var.availability_zones, count.index)

  # tags = {
  #   Name          = "${var.name}-private-subnet-${count.index}"
  #   Terraform_Env = var.terraform_env
  # }
}
