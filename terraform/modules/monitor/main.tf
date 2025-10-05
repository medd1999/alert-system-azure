resource "azurerm_monitor_metric_alert" "cpu_alert" {
  name                = "HighCPUAlert"
  resource_group_name = var.resource_group_name
  scopes              = [var.app_service_id]
  description         = "Alert for high CPU usage"
  severity            = 2
  frequency          = "PT5M"
  window_size        = "PT5M"
  enabled           = true

  criteria {
    metric_namespace = "Microsoft.Compute/virtualMachines"
    metric_name      = "Percentage CPU"
    aggregation      = "Average"
    operator         = "GreaterThan"
    threshold        = 80
  }

  action {
    action_group_id = var.action_group_id
  }
}