variable "name" {
  description = "The name tag for the Elastic IPs"
  type        = string
}

variable "terraform_env" {
  description = "Terraform environment"
  type        = string
}

variable "vpc_id" {
  description = "The ID of the VPC where the route table will be created"
  type        = string
}