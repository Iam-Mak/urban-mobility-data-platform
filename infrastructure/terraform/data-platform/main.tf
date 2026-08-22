data "terraform_remote_state" "foundation" {
  backend = "local"

  config = {
    path = "../foundation/terraform.tfstate"
  }
}

resource "azurerm_data_factory" "urban_mobility" {
  name = var.data_factory_name

  location = data.terraform_remote_state.foundation.outputs.location

  resource_group_name = data.terraform_remote_state.foundation.outputs.resource_group_name

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

resource "azurerm_role_assignment" "adf_storage_access" {
  scope                = data.terraform_remote_state.foundation.outputs.storage_account_id
  role_definition_name = "Storage Blob Data Contributor"
  principal_id         = azurerm_data_factory.urban_mobility.identity[0].principal_id
}