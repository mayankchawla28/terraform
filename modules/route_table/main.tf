resource "aws_route_table" "public" {
  vpc_id = var.vpc_id

  # tags = {
  #   Name          = "${var.name}-public-route-table"
  #   Terraform_Env = var.terraform_env
  # }
}

# resource "aws_route" "public" {
#   route_table_id         = aws_route_table.public.id
#   destination_cidr_block = "0.0.0.0/0"
#   gateway_id             = var.igw_id
# }

resource "aws_route_table_association" "public" {
  count          = var.public_subnet_count
  subnet_id      = element(var.public_subnet_ids, count.index)
  route_table_id = aws_route_table.public.id
}

resource "aws_route_table" "private" {
  vpc_id = var.vpc_id

  # tags = {
  #   Name          = "${var.name}-private-route-table"
  #   Terraform_Env = var.terraform_env
  # }
}

# resource "aws_route" "private_nat_route" {
#   count = var.private_subnet_count
#   route_table_id         = aws_route_table.private.id
#   destination_cidr_block = "10.0.12.5"
#   nat_gateway_id         = var.nat_gateway_id
# }

resource "aws_route_table_association" "private" {
  count          = var.private_subnet_count
  subnet_id      = element(var.private_subnet_ids, count.index)
  route_table_id = aws_route_table.private.id
}
