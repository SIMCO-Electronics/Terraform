module "marketing_network" {
  source           = "../../modules/network"
  project_id       = local.mark_project_id
  network_name     = "vpc-${var.environment_code}-mark"
  default_region   = var.default_region
  environment_code = var.environment_code
  nat_enabled      = true
  subnets = [
    {
      subnet_name           = "sb-${var.environment_code}-mark-01"
      subnet_ip             = "10.0.163.0/24"
      subnet_region         = var.default_region
      subnet_private_access = "true"
      subnet_flow_logs      = "false"
      description           = "This subnet has a description"

    },
    {
      subnet_name           = "sb-${var.environment_code}-mark-02"
      subnet_ip             = "10.0.164.0/24"
      subnet_region         = var.default_region
      subnet_private_access = "true"
      subnet_flow_logs      = "false"
      description           = "This subnet has a description"
    },
    {
      subnet_name           = "sb-${var.environment_code}-mark-03"
      subnet_ip             = "10.0.165.0/24"
      subnet_region         = var.default_region
      subnet_private_access = "true"
      subnet_flow_logs      = "false"
      description           = "This subnet has a description"

    }
  ]
}