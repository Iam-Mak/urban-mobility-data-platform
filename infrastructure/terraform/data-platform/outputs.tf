output "data_factory_name" {
  description = "Name of the Azure Data Factory."
  value       = azurerm_data_factory.urban_mobility.name
}

output "data_factory_id" {
  description = "Resource ID of the Azure Data Factory."
  value       = azurerm_data_factory.urban_mobility.id
}

output "data_factory_principal_id" {
  description = "Principal ID of the Data Factory managed identity."
  value       = azurerm_data_factory.urban_mobility.identity[0].principal_id
}