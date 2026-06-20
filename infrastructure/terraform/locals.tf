locals {

  project = "urban-mobility"

  common_tags = {
    project     = local.project
    environment = var.environment
    managed_by  = "terraform"
  }

}