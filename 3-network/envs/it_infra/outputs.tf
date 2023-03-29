output "it_network_name" {
  value       = module.it_network.network_name
  description = "The Name of VPC to be created"
}

output "it_network_self_link" {
  value       = module.it_network.network_self_link
  description = "The Name of VPC to be created"
}

output "it_network_subnets_ids" {
  value       = module.it_network.subnets_ids
  description = "The ID of subnets created"
}

output "it_network_firewall_iap" {
  value       = module.firewall_it.allow_ingress_iap
  description = "Firewall IAP for IT"
}

output "it_network_firewall_lb_hc" {
  value       = module.firewall_it.allow_ingress_lb_hc
  description = "Firewall LB HC for IT"
}

output "marketing_network_name" {
  value       = module.marketing_network.network_name
  description = "The Name of VPC to be created"
}

output "marketing_network_self_link" {
  value       = module.marketing_network.network_self_link
  description = "The Name of VPC to be created"
}

output "marketing_network_subnets_ids" {
  value       = module.marketing_network.subnets_ids
  description = "The ID of subnets created"
}

output "marketing_network_firewall_iap" {
  value       = module.firewall_marketing.allow_ingress_iap
  description = "Firewall IAP for Marketing"
}

output "marketing_network_firewall_lb_hc" {
  value       = module.firewall_marketing.allow_ingress_lb_hc
  description = "Firewall LB HC for Marketing"
}