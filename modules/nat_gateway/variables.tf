variable "terraform_env" {
  description = "Terraform environment"
  type        = string
}

variable "vpc_id" {}
variable "eip_id" {}
variable "public_subnet_id" {}

variable "name" {
  description = "Name for the route table"
  type        = string
}

# variable "private_subnet_ids" {
#   type = list(string)
# }

# variable "eip_ids" {
#   type = list(string)
# }

# variable "availability_zones" {
#   type = list(string)
# }
