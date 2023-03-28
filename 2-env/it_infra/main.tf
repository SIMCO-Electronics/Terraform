locals {
  org_id          = data.terraform_remote_state.bootstrap.outputs.common_config.org_id
  parent          = data.terraform_remote_state.bootstrap.outputs.common_config.parent_id
  billing_account = data.terraform_remote_state.bootstrap.outputs.common_config.billing_account
  project_prefix  = data.terraform_remote_state.bootstrap.outputs.common_config.project_prefix
  folder_prefix   = data.terraform_remote_state.bootstrap.outputs.common_config.folder_prefix
  subfolders      = ["Marketing", "IT"]
}

data "terraform_remote_state" "bootstrap" {
  backend = "gcs"

  config = {
    bucket = var.remote_state_bucket
    prefix = "terraform/bootstrap/state"
  }
}

resource "google_folder" "env" {
  display_name = "${local.folder_prefix}-${var.env}"
  parent       = local.parent
}

resource "time_sleep" "wait_env_creation" {
  depends_on = [google_folder.env]
  destroy_duration = "30s"
}

resource "google_folder" "sub_folder" {
  depends_on   = [time_sleep.wait_env_creation]
  for_each     = toset(local.subfolders)
  display_name = each.key
  parent       = google_folder.env.name
}

resource "time_sleep" "wait_sub_creation" {
  depends_on = [google_folder.sub_folder]
  destroy_duration = "30s"
}
