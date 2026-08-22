variable "data_factory_name" {
  description = "Name of the Azure Data Factory."
  type        = string

  validation {
    condition     = length(trimspace(var.data_factory_name)) > 0
    error_message = "Data Factory name must not be empty."
  }
}

variable "environment" {
  description = "Deployment environment."
  type        = string

  validation {
    condition     = contains(["dev", "test", "prod"], var.environment)
    error_message = "Environment must be one of: dev, test, or prod."
  }
}