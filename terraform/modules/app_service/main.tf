resource "azurerm_app_service_plan" "plan" {
    name                = var.app_service_plan_name
    location            = var.location
    resource_group_name = var.resource_group_name
    kind                = "Linux"
    reserved            = true

    sku {
        tier = "Standard"
        size = "S1"
    }
}

resource "azurerm_app_service" "webapp" {
    name                = var.app_service_name
    location            = var.location
    resource_group_name = var.resource_group_name
    app_service_plan_id = azurerm_app_service_plan.plan.id

    site_config {
        linux_fx_version = var.linux_fx_version
    }

    app_settings = var.app_settings
}