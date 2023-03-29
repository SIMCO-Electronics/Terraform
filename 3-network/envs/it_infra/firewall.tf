module "firewall_it" {
  source           = "../../modules/firewall"
  project_id       = local.it_project_id
  network_name     = module.it_network.network_name
  environment_code = var.environment_code
  app_name         = "it"
}

module "firewall_marketing" {
  source           = "../../modules/firewall"
  project_id       = local.mark_project_id
  network_name     = module.marketing_network.network_name
  environment_code = var.environment_code
  app_name         = "mark"
}