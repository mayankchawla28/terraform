resource "aws_nat_gateway" "nat" {
  allocation_id = var.eip_id
  subnet_id     = var.public_subnet_id

  tags = {
    Name = "${var.name}-NAT-Gateway"
    Terraform_Env = var.terraform_env

  }
}
