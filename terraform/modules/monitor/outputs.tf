output "cpu_alert_id" {
    value = azurerm_monitor_metric_alert.cpu_alert.id
    description = "CPU Alert ID"
}