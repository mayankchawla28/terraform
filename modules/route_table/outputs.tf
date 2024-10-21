output "route_table_public_id" {
  description = "The ID of the created route table"
  value       = aws_route_table.public.id
}

output "route_table_public_arn" {
  description = "The ARN of the created route table"
  value       = aws_route_table.public.arn
}

output "route_table_private_id" {
  description = "The ID of the created route table"
  value       = aws_route_table.private.id
}

output "route_table_private_arn" {
  description = "The ARN of the created route table"
  value       = aws_route_table.private.arn
}
