data "terraform_remote_state" "foundation" {
  backend = "local"

  config = {
    path = "../../foundation/terraform.tfstate"
  }
}

resource "azurerm_databricks_workspace" "urban_mobility" {
  name                = var.databricks_workspace_name
  resource_group_name = data.terraform_remote_state.foundation.outputs.resource_group_name
  location            = data.terraform_remote_state.foundation.outputs.location

  sku = "trial"

  tags = local.common_tags
}