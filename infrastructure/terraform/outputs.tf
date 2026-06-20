output "resource_group_name" {
  description = "Resource Group name"

  value = azurerm_resource_group.urban_mobility.name
}

output "resource_group_location" {
  description = "Azure region"

  value = azurerm_resource_group.urban_mobility.location
}

output "data_lake_name" {
  description = "Azure Data Lake Storage Gen2 account name"

  value = azurerm_storage_account.data_lake.name
}

output "databricks_workspace_url" {
  value = azurerm_databricks_workspace.urban_mobility.workspace_url
}

output "databricks_access_connector_id" {
  value = azurerm_databricks_access_connector.urban_mobility.id
}