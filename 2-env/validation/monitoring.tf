module "monitoring" {
  source                     = "../modules/project"
  for_each                   = toset(local.subfolders)
  application_name           = "monitoring"
  depends_on                 = [time_sleep.wait_sub_creation]
  env                        = var.env
  environment_code           = var.environment_code
  monitoring_workspace_users = var.monitoring_workspace_users
  folder_id                  = google_folder.sub_folder[each.key].id
  billing_account            = local.billing_account
  project_prefix             = local.project_prefix
  org_id                     = local.org_id
  activate_apis = [
    "logging.googleapis.com",
    "monitoring.googleapis.com",
    "billingbudgets.googleapis.com"
  ]
  project_budget = {
    budget_amount        = "1000"
    alert_spent_percents = [0.5, 0.75, 0.9, 0.95]
    alert_pubsub_topic   = null
  }
}