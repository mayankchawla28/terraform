variable "aws_region" {
  type        = string
  description = "aws region name"
  nullable    = false
}

variable "aws_secret_key" {
  type        = string
  description = "aws secret key"
  nullable    = false
  sensitive   = true
}

variable "aws_access_key_id" {
  type        = string
  description = "aws access key"
  nullable    = false
  sensitive   = true
}
variable "terraform_env" {
  description = "Terraform environment"
  type        = string
}

variable "cidr_block" {
  description = "The CIDR block for the VPC."
  type        = string
  default     = "10.0.0.0/24"
}

variable "vpc_name" {
  description = "The name of the test my VPC."
  type        = string
}

variable "public_subnet_cidrs" {
  description = "List of CIDR blocks for public subnets"
  type        = list(string)
}

variable "private_subnet_cidrs" {
  description = "List of CIDR blocks for private subnets"
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

variable "availability_zones" {
  description = "List of availability zones for the subnets"
  type        = list(string)
}