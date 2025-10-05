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

module "app_service" {
    source              = "./modules/app_service"
    location            = var.location
    resource_group_name = var.resource_group_name

    app_service_plan_name = "alert-system-plan"
    app_service_name      = "alert-system-webapp"
    linux_fx_version      = "PYTHON|3.10"
    sku_size              = "S1"
    sku_tier              = "Standard"

    app_settings = {
        "ENV" = "production"
        "LOG_LEVEL" = "info"
        "ALERT_MODE" = "active"
    }
}