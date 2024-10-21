variable "terraform_env" {
  description = "Terraform environment"
  type        = string
}

variable "cidr_block" {
  description = "The CIDR block for the VPC."
  type        = string
}

variable "name" {
  description = "The name of the VPC."
  type        = string
}

variable "tenancy" {
  default     = "default"
  type        = string
  description = "A tenancy option for instances launched into the VPC."
}
