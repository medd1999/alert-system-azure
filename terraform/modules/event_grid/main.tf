resource "azurerm_eventgrid_topic" "topic" {
  name                = "alert-events"
  resource_group_name = var.resource_group_name
  location            = var.location
}

resource "azurerm_eventgrid_event_subscription" "subscription" {
  name  = "alert-subscription"
  scope = azurerm_eventgrid_topic.topic.id

  webhook_endpoint {
    url = "https://your-alert-service-url"
  }
}
