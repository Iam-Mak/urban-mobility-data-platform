output "databricks_workspace_name" {
  description = "Azure Databricks workspace name."
  value       = azurerm_databricks_workspace.urban_mobility.name
}

output "databricks_workspace_id" {
  description = "Azure Databricks workspace resource ID."
  value       = azurerm_databricks_workspace.urban_mobility.id
}

output "databricks_workspace_url" {
  description = "Databricks workspace URL."
  value       = azurerm_databricks_workspace.urban_mobility.workspace_url
}