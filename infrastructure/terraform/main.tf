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

  sku = "trial"

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

resource "azurerm_data_factory" "urban_mobility" {
  name                = var.data_factory_name
  location            = azurerm_resource_group.urban_mobility.location
  resource_group_name = azurerm_resource_group.urban_mobility.name

  identity {
    type = "SystemAssigned"
  }

  tags = local.common_tags

  lifecycle {
    ignore_changes = [
      github_configuration
    ]
  }
}

resource "azurerm_storage_data_lake_gen2_filesystem" "landing" {
  name               = var.landing_container_name
  storage_account_id = azurerm_storage_account.data_lake.id
}

resource "azurerm_storage_data_lake_gen2_filesystem" "managed" {
  name               = var.managed_container_name
  storage_account_id = azurerm_storage_account.data_lake.id
}