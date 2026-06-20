resource "azurerm_resource_group" "urban_mobility" {

  name = var.resource_group_name

  location = var.location

  tags = local.common_tags

}

resource "azurerm_storage_account" "data_lake" {

  name = var.storage_account_name

  resource_group_name = azurerm_resource_group.urban_mobility.name

  location = azurerm_resource_group.urban_mobility.location

  account_tier = "Standard"

  account_replication_type = "LRS"

  is_hns_enabled = true

  tags = local.common_tags

}

resource "azurerm_databricks_workspace" "urban_mobility" {

  name = var.databricks_workspace_name

  resource_group_name = azurerm_resource_group.urban_mobility.name

  location = azurerm_resource_group.urban_mobility.location

  sku = "premium"

  tags = local.common_tags

}

resource "azurerm_databricks_access_connector" "urban_mobility" {

  name = var.databricks_access_connector_name

  resource_group_name = azurerm_resource_group.urban_mobility.name

  location = azurerm_resource_group.urban_mobility.location

  identity {
    type = "SystemAssigned"
  }

  tags = local.common_tags

}

resource "azurerm_role_assignment" "databricks_storage_access" {

  scope = azurerm_storage_account.data_lake.id

  role_definition_name = "Storage Blob Data Contributor"

  principal_id = azurerm_databricks_access_connector.urban_mobility.identity[0].principal_id

}