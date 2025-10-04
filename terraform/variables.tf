variable "location" {
  description = "The Azure region to deploy resources in."
  type        = string
  default     = "East US"
}

variable "resource_group_name" {
  description = "Resource group name"
  type        = string
  default     = "alert-system-rg"
}

variable "app_service_name" {
  description = "App Service name"
  type        = string
  default     = "alert-system-app-service"
}

variable "key_vault_name" {
  description = "Key Vault name"
  type        = string
  default     = "alertKeyVault"
}