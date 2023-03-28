variable "env" {
  description = "The environment to prepare (ex. development)"
  type        = string
}

variable "environment_code" {
  type        = string
  description = "A short form of the folder level resources (environment) within the Google Cloud organization (ex. d)."
}

variable "monitoring_workspace_users" {
  description = "Google Workspace or Cloud Identity group that have access to Monitoring Workspaces."
  type        = string
}

variable "project_budget" {
  description = <<EOT
  Budget configuration for projects.
  EOT
  type = object({
    budget_amount        = optional(number, 1000)
    alert_spent_percents = optional(list(number), [0.5, 0.75, 0.9, 0.95])
    alert_pubsub_topic   = optional(string, null)
  })
  default = {}
}

variable "project_prefix" {
  type        = string
  description = "Project Prefix to use"
}


variable "billing_account" {
  type        = string
  description = "Billing Account to use"
}

variable "folder_id" {
  description = "Parent ID to use"
}

variable "org_id" {
  type        = string
  description = "Org ID to use"
}

variable "activate_apis" {
  type        = list(any)
  description = "The API to activate in project"
}

variable "application_name" {
  type        = string
  description = "Name of application"
}