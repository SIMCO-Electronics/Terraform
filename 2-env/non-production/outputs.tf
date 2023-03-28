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

output "prj_np_app_smcs" {
  description = "Application project ID for SMCS under development"
  value       = module.projects["SMCS"].project_id
}
output "prj_np_app_c4" {
  description = "Application project ID for C4 under development"
  value       = module.projects["C4"].project_id
}

output "prj_np_monitoring_smcs" {
  description = "Monitoring project ID for SMCS under development"
  value       = module.monitoring["SMCS"].project_id
}

output "prj_np_monitoring_c4" {
  description = "Monitoring project ID for C4 under development"
  value       = module.monitoring["C4"].project_id
}

output "prj_np_secrets_smcs" {
  description = "Secrets project ID for SMCS under development"
  value       = module.secrets["SMCS"].project_id
}

output "prj_np_secrets_c4" {
  description = "Secrets project ID for C4 under development"
  value       = module.secrets["C4"].project_id
}
