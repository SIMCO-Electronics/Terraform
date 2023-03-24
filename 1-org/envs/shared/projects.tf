/**
 * Copyright 2021 Google LLC
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

locals {
  hub_and_spoke_roles = [
    "roles/compute.instanceAdmin",
    "roles/iam.serviceAccountAdmin",
    "roles/resourcemanager.projectIamAdmin",
    "roles/iam.serviceAccountUser",
  ]
}

/******************************************
  Projects for log sinks
*****************************************/

module "org_audit_logs" {
  source  = "terraform-google-modules/project-factory/google"
  version = "~> 14.0"

  random_project_id        = true
  random_project_id_length = 4
  default_service_account  = "deprivilege"
  name                     = "${local.project_prefix}-c-logging"
  org_id                   = local.org_id
  billing_account          = local.billing_account
  folder_id                = google_folder.common.id
  activate_apis            = ["logging.googleapis.com", "bigquery.googleapis.com", "billingbudgets.googleapis.com"]

  labels = {
    environment       = "production"
    application_name  = "org-logging"
    billing_code      = "production"
    primary_contact   = "example1"
    secondary_contact = "example2"
    env_code          = "p"
  }
  budget_alert_pubsub_topic   = var.project_budget.org_audit_logs_alert_pubsub_topic
  budget_alert_spent_percents = var.project_budget.org_audit_logs_alert_spent_percents
  budget_amount               = var.project_budget.org_audit_logs_budget_amount
}

module "org_billing_logs" {
  source  = "terraform-google-modules/project-factory/google"
  version = "~> 14.0"

  random_project_id        = true
  random_project_id_length = 4
  default_service_account  = "deprivilege"
  name                     = "${local.project_prefix}-c-billing-logs"
  org_id                   = local.org_id
  billing_account          = local.billing_account
  folder_id                = google_folder.common.id
  activate_apis            = ["logging.googleapis.com", "bigquery.googleapis.com", "billingbudgets.googleapis.com"]

  labels = {
    environment       = "production"
    application_name  = "org-billing-logs"
    billing_code      = "production"
    primary_contact   = "example1"
    secondary_contact = "example2"
    env_code          = "p"
  }
  budget_alert_pubsub_topic   = var.project_budget.org_billing_logs_alert_pubsub_topic
  budget_alert_spent_percents = var.project_budget.org_billing_logs_alert_spent_percents
  budget_amount               = var.project_budget.org_billing_logs_budget_amount
}

/******************************************
  Project for Org-wide Secrets
*****************************************/

module "org_secrets" {
  source  = "terraform-google-modules/project-factory/google"
  version = "~> 14.0"

  random_project_id        = true
  random_project_id_length = 4
  default_service_account  = "deprivilege"
  name                     = "${local.project_prefix}-c-secrets"
  org_id                   = local.org_id
  billing_account          = local.billing_account
  folder_id                = google_folder.common.id
  activate_apis            = ["logging.googleapis.com", "secretmanager.googleapis.com", "billingbudgets.googleapis.com"]

  labels = {
    environment       = "production"
    application_name  = "org-secrets"
    billing_code      = "production"
    primary_contact   = "example1"
    secondary_contact = "example2"
    env_code          = "p"
  }
  budget_alert_pubsub_topic   = var.project_budget.org_secrets_alert_pubsub_topic
  budget_alert_spent_percents = var.project_budget.org_secrets_alert_spent_percents
  budget_amount               = var.project_budget.org_secrets_budget_amount
}