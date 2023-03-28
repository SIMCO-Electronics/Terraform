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

output "prj_it_app_Marketing" {
  description = "Application project ID for Marketing under development"
  value       = module.projects["Marketing"].project_id
}
output "prj_it_app_IT" {
  description = "Application project ID for IT under development"
  value       = module.projects["IT"].project_id
}

output "prj_it_monitoring_Marketing" {
  description = "Monitoring project ID for Marketing under development"
  value       = module.monitoring["Marketing"].project_id
}

output "prj_it_monitoring_IT" {
  description = "Monitoring project ID for IT under development"
  value       = module.monitoring["IT"].project_id
}

output "prj_it_secrets_Marketing" {
  description = "Secrets project ID for Marketing under development"
  value       = module.secrets["Marketing"].project_id
}

output "prj_it_secrets_IT" {
  description = "Secrets project ID for IT under development"
  value       = module.secrets["IT"].project_id
}
