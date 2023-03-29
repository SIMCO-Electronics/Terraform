module "firewall_c4" {
  source           = "../../modules/firewall"
  project_id       = local.c4_project_id
  network_name     = module.c4_network.network_name
  environment_code = var.environment_code
  app_name         = "c4"
}

module "firewall_smcs" {
  source           = "../../modules/firewall"
  project_id       = local.smcs_project_id
  network_name     = module.smcs_network.network_name
  environment_code = var.environment_code
  app_name         = "smcs"
}