variable "databricks_workspace_name" {
  description = "Name of the Azure Databricks workspace."
  type        = string

  validation {
    condition     = length(trimspace(var.databricks_workspace_name)) > 0
    error_message = "Databricks workspace name must not be empty."
  }
}