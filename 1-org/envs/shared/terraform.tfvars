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

# Must include the domain of the organization you are deploying the foundation.
domains_to_allow = ["simco.com"]

essential_contacts_domains_to_allow = ["simco.com"]

billing_data_users = "group_billing_users@simco.com"

audit_data_users = "group_audit_users@simco.com"

remote_state_bucket = "bkt-prj-b-seed-tfstate-888f" #REPLACE

project_budget = {
    org_secrets_budget_amount               = 1000
    org_secrets_alert_spent_percents        = [0.5, 0.75, 0.9, 0.95]
    org_secrets_alert_pubsub_topic          = null
    org_billing_logs_budget_amount          = 1000
    org_billing_logs_alert_spent_percents   = [0.5, 0.75, 0.9, 0.95]
    org_billing_logs_alert_pubsub_topic     = null
    org_audit_logs_budget_amount            = 1000
    org_audit_logs_alert_spent_percents     = [0.5, 0.75, 0.9, 0.95]
    org_audit_logs_alert_pubsub_topic       = null
  
}
