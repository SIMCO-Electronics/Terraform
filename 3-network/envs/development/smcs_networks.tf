module "smcs_network" {
  source           = "../../modules/network"
  project_id       = local.smcs_project_id
  network_name     = "vpc-${var.environment_code}-smcs"
  default_region   = var.default_region
  environment_code = var.environment_code
  nat_enabled      = true
  subnets = [
    {
      subnet_name           = "sb-${var.environment_code}-smcs-01"
      subnet_ip             = "10.0.67.0/24"
      subnet_region         = var.default_region
      subnet_private_access = "true"
      subnet_flow_logs      = "false"
      description           = "This subnet has a description"

    },
    {
      subnet_name           = "sb-${var.environment_code}-smcs-02"
      subnet_ip             = "10.0.68.0/24"
      subnet_region         = var.default_region
      subnet_private_access = "true"
      subnet_flow_logs      = "false"
      description           = "This subnet has a description"
    },
    {
      subnet_name           = "sb-${var.environment_code}-smcs-03"
      subnet_ip             = "10.0.69.0/24"
      subnet_region         = var.default_region
      subnet_private_access = "true"
      subnet_flow_logs      = "false"
      description           = "This subnet has a description"

    }
  ]
}