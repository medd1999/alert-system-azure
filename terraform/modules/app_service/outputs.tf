output "app_service_id" {
  value = azurerm_app_service.webapp.id
  description = "App Service ID"
}

output "app_service_default_hostname" {
  value = azurerm_app_service.webapp.default_site_hostname
  description = "App Service Default Hostname"
}