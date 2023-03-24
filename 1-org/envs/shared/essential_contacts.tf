/**
 * Copyright 2022 Google LLC
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
  gcp_platform_viewer   = var.gcp_groups.platform_viewer == null ? local.group_org_admins : var.gcp_groups.platform_viewer
  gcp_security_reviewer = var.gcp_groups.security_reviewer == null ? local.group_org_admins : var.gcp_groups.security_reviewer
  gcp_network_viewer    = var.gcp_groups.network_viewer == null ? local.group_org_admins : var.gcp_groups.network_viewer

  categories_map = {
    "BILLING"         = setunion([local.group_billing_admins, var.billing_data_users])
  }

  contacts_list = transpose(local.categories_map)
}

resource "google_essential_contacts_contact" "essential_contacts" {
  for_each                            = local.contacts_list
  parent                              = local.parent
  email                               = each.key
  language_tag                        = var.essential_contacts_language
  notification_category_subscriptions = each.value
}
