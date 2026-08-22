locals {
  project     = "urban-mobility"
  application = "mobility-platform"

  common_tags = {
    project     = local.project
    application = local.application
    environment = "dev"
    managed_by  = "terraform"
  }
}