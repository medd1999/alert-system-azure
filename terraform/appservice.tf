resource "azurerm_app_service_plan" "main" {
  name                = "alert-service-plan"
  location            = azurerm_resource_group.main.location
  resource_group_name = azurerm_resource_group.main.name
  kind                = "Linux"
  reserved            = true
  sku {
    tier = "Basic"
    size = "B1"
  }
}

resource "azurerm_app_service" "main" {
  name                = var.app_service_name
  location            = azurerm_resource_group.main.location
  resource_group_name = azurerm_resource_group.main.name
  app_service_plan_id = azurerm_app_service_plan.main.id

  site_config {
    linux_fx_version = "PYTHON|3.8"
  }

  app_settings = {
    "WEBSITES_ENABLE_APP_SERVICE_STORAGE" = "false"
    "FUNCTIONS_WORKER_RUNTIME"             = "python"
    "AzureWebJobsStorage"                  = "UseDevelopmentStorage=true"
    "KEY_VAULT_URI"                       = var.key_vault_name
  }
}