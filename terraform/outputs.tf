# outputs.tf

output "instance_id" {
  description = "ID of the created EC2 instance"
  value       = aws_instance.web.id
}

output "region" {
  description = "AWS region where resources are deployed"
  value       = var.aws_region
}

output "instance_type" {
  description = "Type of EC2 instance"
  value       = var.instance_type
}
