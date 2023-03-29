output "c4_p_network_name" {
  value       = module.c4_network.network_name
  description = "The Name of VPC to be created"
}

output "c4_p_network_self_link" {
  value       = module.c4_network.network_self_link
  description = "The Name of VPC to be created"
}

output "c4_p_subnets_ids" {
  value       = module.c4_network.subnets_ids
  description = "The ID of subnets created"
}

output "c4_p_firewall_iap" {
  value       = module.firewall_c4.allow_ingress_iap
  description = "Firewall IAP for C4"
}

output "c4_p_firewall_lb_hc" {
  value       = module.firewall_c4.allow_ingress_lb_hc
  description = "Firewall LB HC for C4"
}

output "smcs_p_network_name" {
  value       = module.smcs_network.network_name
  description = "The Name of VPC to be created"
}

output "smcs_p_network_self_link" {
  value       = module.smcs_network.network_self_link
  description = "The Name of VPC to be created"
}

output "smcs_p_subnets_ids" {
  value       = module.smcs_network.subnets_ids
  description = "The ID of subnets created"
}

output "smcs_p_firewall_iap" {
  value       = module.firewall_smcs.allow_ingress_iap
  description = "Firewall IAP for C4"
}

output "smcs_p_firewall_lb_hc" {
  value       = module.firewall_smcs.allow_ingress_lb_hc
  description = "Firewall LB HC for C4"
}