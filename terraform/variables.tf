variable "location" {
  description = "Azure region"
  type        = string
  default     = "East US"
}

variable "resource_group_name" {
  description = "Resource group name"
  type        = string
  default     = "alertResourceGroup"
}

variable "app_service_name" {
  description = "App Service name"
  type        = string
  default     = "alertAppService"
}

variable "key_vault_name" {
  description = "Key Vault name"
  type        = string
  default     = "alertKeyVault"
}