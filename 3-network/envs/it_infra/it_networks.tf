module "it_network" {
  source           = "../../modules/network"
  project_id       = local.it_project_id
  network_name     = "vpc-${var.environment_code}-it"
  default_region   = var.default_region
  environment_code = var.environment_code
  nat_enabled      = true
  subnets = [
    {
      subnet_name           = "sb-${var.environment_code}-it-01"
      subnet_ip             = "10.0.160.0/24"
      subnet_region         = var.default_region
      subnet_private_access = "true"
      subnet_flow_logs      = "false"
      description           = "This subnet has a description"

    },
    {
      subnet_name           = "sb-${var.environment_code}-it-02"
      subnet_ip             = "10.0.161.0/24"
      subnet_region         = var.default_region
      subnet_private_access = "true"
      subnet_flow_logs      = "false"
      description           = "This subnet has a description"
    },
    {
      subnet_name           = "sb-${var.environment_code}-it-03"
      subnet_ip             = "10.0.162.0/24"
      subnet_region         = var.default_region
      subnet_private_access = "true"
      subnet_flow_logs      = "false"
      description           = "This subnet has a description"

    }
  ]
}