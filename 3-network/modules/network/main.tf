module "vpc" {
  source  = "terraform-google-modules/network/google"
  version = "~> 6.0"

  project_id   = var.project_id
  network_name = var.network_name
  routing_mode = "GLOBAL"
  subnets      = var.subnets
  # subnets = [
  #     {
  #         subnet_name           = "subnet-01"
  #         subnet_ip             = "10.10.10.0/24"
  #         subnet_region         = "us-west1"
  #     },
  #     {
  #         subnet_name           = "subnet-02"
  #         subnet_ip             = "10.10.20.0/24"
  #         subnet_region         = "us-west1"
  #         subnet_private_access = "true"
  #         subnet_flow_logs      = "true"
  #         description           = "This subnet has a description"
  #     },
  #     {
  #         subnet_name               = "subnet-03"
  #         subnet_ip                 = "10.10.30.0/24"
  #         subnet_region             = "us-west1"
  #         subnet_flow_logs          = "true"
  #         subnet_flow_logs_interval = "INTERVAL_10_MIN"
  #         subnet_flow_logs_sampling = 0.7
  #         subnet_flow_logs_metadata = "INCLUDE_ALL_METADATA"
  #     }
  # ]
}