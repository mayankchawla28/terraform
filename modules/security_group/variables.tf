variable "terraform_env" {
  description = "Terraform environment"
  type        = string
}

variable "vpc_id" {
  description = "The ID of the VPC where the route table will be created"
  type        = string
}

variable "sg_name" {
  description = "The name of secirity group"
  type        = string
}

variable "cidr_block" {
  description = "The CIDR block for the VPC."
  type        = string
}