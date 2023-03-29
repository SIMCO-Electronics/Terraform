output "network_name" {
  value       = module.vpc.network_name
  description = "The Name of VPC to be created"
}

output "network_self_link" {
  value       = module.vpc.network_self_link
  description = "The Name of VPC to be created"
}

output "subnets_ids" {
  value       = module.vpc.subnets_ids
  description = "The ID of subnets created"
}