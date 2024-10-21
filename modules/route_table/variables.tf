variable "vpc_id" {
  description = "The ID of the VPC where the route table will be created"
  type        = string
}

variable "name" {
  description = "Name for the route table"
  type        = string
}

variable "terraform_env" {
  description = "Terraform environment"
  type        = string
}

variable "cidr_block" {
  description = "The CIDR block for the VPC."
  type        = string
}

# variable "igw_id" {
#   description = "ID of the Internet Gateway for public routes"
#   type        = string
# }

# variable "nat_gateway_id" {
#   description = "ID of the Internet Gateway for public routes"
#   type        = string
# }

# variable "eip_ids" {
#   description = "List of elastic IPs"
#   type        = list(string)
# }

variable "public_subnet_ids" {
  description = "List of public subnet IDs to associate with the route table"
  type        = list(string)
}

variable "private_subnet_ids" {
  description = "List of private subnet IDs to associate with the route table"
  type        = list(string)
}

variable "public_subnet_count" {
  description = "Number of public subnets"
  type        = number
}

variable "private_subnet_count" {
  description = "Number of private subnets"
  type        = number
}
