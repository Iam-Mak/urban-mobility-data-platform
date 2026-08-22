resource "azurerm_resource_group" "urban_mobility" {
  name     = var.resource_group_name
  location = var.location

  tags = local.common_tags
}

resource "azurerm_storage_account" "data_lake" {
  name                     = var.storage_account_name
  resource_group_name      = azurerm_resource_group.urban_mobility.name
  location                 = azurerm_resource_group.urban_mobility.location
  account_tier             = "Standard"
  account_replication_type = "LRS"
  is_hns_enabled           = true

  tags = local.common_tags
}

resource "azurerm_storage_data_lake_gen2_filesystem" "landing" {
  name               = var.landing_container_name
  storage_account_id = azurerm_storage_account.data_lake.id
}

resource "azurerm_storage_data_lake_gen2_filesystem" "managed" {
  name               = var.managed_container_name
  storage_account_id = azurerm_storage_account.data_lake.id
}