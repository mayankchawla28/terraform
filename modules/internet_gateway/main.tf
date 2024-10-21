resource "aws_internet_gateway" "this" {
  vpc_id = var.vpc_id

  # tags = {
  #   Name           = "${var.name}-igw"
    # Terraform_Env  = var.terraform_env
  # }
}
