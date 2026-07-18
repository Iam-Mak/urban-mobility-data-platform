variable "resource_group_name" {
  description = "Azure Resource Group name"
  type        = string
}

variable "location" {
  description = "Azure region"
  type        = string
}

variable "environment" {
  description = "Deployment environment"
  type        = string
}

variable "storage_account_name" {
  description = "Azure Data Lake Storage Gen2 account name"
  type        = string
}

variable "databricks_workspace_name" {
  description = "Azure Databricks workspace name"
  type        = string
}

variable "databricks_access_connector_name" {
  description = "Azure Databricks Access Connector name"
  type        = string
}

variable "data_factory_name" {
  description = "Azure Data Factory name"
  type        = string
}

variable "landing_container_name" {
  description = "Landing container for raw data"
  type        = string
}

variable "managed_container_name" {
  description = "Managed container for Unity Catalog"
  type        = string
}