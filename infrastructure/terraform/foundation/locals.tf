locals {
  project     = "urban-mobility"
  application = "mobility-platform"

  common_tags = {
    project     = local.project
    application = local.application
    environment = var.environment
    managed_by  = "terraform"
  }
}