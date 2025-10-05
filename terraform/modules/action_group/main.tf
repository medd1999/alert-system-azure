resource "azurerm_monitor_action_group" "email_alerts" {
  name                = var.name
  resource_group_name = var.resource_group_name
  short_name          = "emailgrp"

  email_receiver {
    name          = "devops-team"
    email_address = var.email_address
  }
}
