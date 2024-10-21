resource "aws_eip" "this" {

  tags = {
    Name          = "${var.name}-eip"
    Terraform_Env = var.terraform_env
  }
}
