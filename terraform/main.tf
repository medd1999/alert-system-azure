terraform {
    required_providers {
        azurerm = {
          source  = "hashicorp/azurerm"
          version = "~> 3.0"
        }
    }
}

provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "main" {
  name     = var.resource_group_name
  location = var.location
}

data "azurerm_client_config" "current" {}

module "event_grid" {
  source              = "./modules/event_grid"
  topic_name          = "alert-events"
  subscription_name   = "alert-subscription"
  webhook_url         = "https://your-alert-service-url"
  resource_group_name = azurerm_resource_group.main.name
  location            = azurerm_resource_group.main.location
}

module "key_vault" {
  source              = "./modules/key_vault"
  key_vault_name     = "alert-kv"
  location            = var.location
  resource_group_name = var.resource_group_name
  tenant_id           = data.azurerm_client_config.current.tenant_id
  object_id           = data.azurerm_client_config.current.object_id
}