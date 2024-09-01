variable "aws_region" {
  type = string
  description = "aws region name"
  nullable = false
}

variable "aws_secret_key" {
  type = string
  description = "aws secret key"
  nullable = false
  sensitive = true
}

variable "aws_access_key_id" {
  type = string
  description = "aws access key"
  nullable = false
  sensitive = true
}
