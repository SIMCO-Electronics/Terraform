module "c4_network" {
  source           = "../../modules/network"
  project_id       = local.c4_project_id
  network_name     = "pc-${var.environment_code}-c4"
  default_region   = var.default_region
  environment_code = var.environment_code
  nat_enabled      = true
  subnets = [
    {
      subnet_name           = "sb-${var.environment_code}-c4-01"
      subnet_ip             = "10.0.0.0/24"
      subnet_region         = var.default_region
      subnet_private_access = "true"
      subnet_flow_logs      = "false"
      description           = "This subnet has a description"

    },
    {
      subnet_name           = "sb-${var.environment_code}-c4-02"
      subnet_ip             = "10.0.1.0/24"
      subnet_region         = var.default_region
      subnet_private_access = "true"
      subnet_flow_logs      = "false"
      description           = "This subnet has a description"
    },
    {
      subnet_name           = "sb-${var.environment_code}-c4-03"
      subnet_ip             = "10.0.2.0/24"
      subnet_region         = var.default_region
      subnet_private_access = "true"
      subnet_flow_logs      = "false"
      description           = "This subnet has a description"

    }
  ]
}