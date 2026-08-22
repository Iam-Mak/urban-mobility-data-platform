output "resource_group_name" {
  description = "Name of the Azure Resource Group."
  value       = azurerm_resource_group.urban_mobility.name
}

output "resource_group_id" {
  description = "Resource ID of the Azure Resource Group."
  value       = azurerm_resource_group.urban_mobility.id
}

output "storage_account_name" {
  description = "Name of the ADLS Gen2 storage account."
  value       = azurerm_storage_account.data_lake.name
}

output "storage_account_id" {
  description = "Resource ID of the ADLS Gen2 storage account."
  value       = azurerm_storage_account.data_lake.id
}

output "storage_dfs_endpoint" {
  description = "Primary DFS endpoint of the ADLS Gen2 storage account."
  value       = azurerm_storage_account.data_lake.primary_dfs_endpoint
}

output "landing_filesystem_name" {
  description = "Name of the ADLS Gen2 landing filesystem."
  value       = azurerm_storage_data_lake_gen2_filesystem.landing.name
}

output "managed_filesystem_name" {
  description = "Name of the ADLS Gen2 managed filesystem."
  value       = azurerm_storage_data_lake_gen2_filesystem.managed.name
}

output "location" {
  description = "Azure region where the foundation resources are deployed."
  value       = azurerm_resource_group.urban_mobility.location
}