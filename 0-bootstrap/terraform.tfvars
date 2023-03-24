org_id = ""  #REPLACE

billing_account = "" #REPLACE

group_org_admins = "gcp-organization-admins@simco.com"

group_billing_admins = "gcp-billing-admins@simco.com"

default_region = "us-central1"

parent_folder = ""  #REPLACE

groups = {
  create_groups = true,
  billing_project = "", #REPLACE
  required_groups = {
    group_org_admins           = "group_org_admins@simco.com"
    group_billing_admins       = "group_billing_admins@simco.com"
    billing_data_users         = "group_billing_users@simco.com" 
    audit_data_users           = "group_audit_users@simco.com"
    monitoring_workspace_users = "group_monitoring_user@simco.com"
  },
  optional_groups = {
    gcp_platform_viewer      = "group_platform_viewer@simco.com"
    gcp_security_reviewer    = "group_security_reviewer@simco.com"
    gcp_network_viewer       = "group_network_viewer@simco.com"
    gcp_global_secrets_admin = "group_global_secrets_admin@simco.com"
    gcp_audit_viewer         = "group_audit_viewer@simco.com"
    group_network_admins     = "group_network_admins@simco.com" 
  }
}
