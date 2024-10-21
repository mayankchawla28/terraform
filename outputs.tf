output "vpc_id" {
  description = "The ID of the VPC"
  value       = module.vpc.vpc_id
}

output "vpc_arn" {
  description = "The ARN of the VPC"
  value       = module.vpc.vpc_arn
}

output "public_subnet_ids" {
  description = "List of public subnet IDs"
  value       = module.subnets.public_subnet_ids
}

output "private_subnet_ids" {
  description = "List of private subnet IDs"
  value       = module.subnets.private_subnet_ids
}

# output "internet_gateway_public_id" {
#   description = "The ID of the Internet Gateway"
#   value       = module.internet_gateway_public.internet_gateway_id
# }

# output "internet_gateway_private_id" {
#   description = "The ID of the Internet Gateway"
#   value       = module.internet_gateway_private.internet_gateway_id
# }

# output "elastic_ip_id" {
#   value       = module.elastic_ip.eip_id
#   description = "The IDs of the Elastic IPs"
# }

# output "nat_gateway_ids" {
#   value       = module.nat_gateway.nat_gateway_id # Adjust this if you need specific output from the NAT Gateway module
#   description = "The IDs of the NAT Gateways"
# }

output "route_table_public_id" {
  description = "The public ID of the Route Table"
  value       = module.route_table.route_table_public_id
}

output "route_table_private_id" {
  description = "The private ID of the Route Table"
  value       = module.route_table.route_table_private_id
}

output "security_group_id" {
  value = module.security_group.security_group_id
}

output "aws_s3_bucket_name" {
  value = module.aws_s3.bucket_name
}