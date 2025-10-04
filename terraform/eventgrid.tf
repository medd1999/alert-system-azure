resource "azurerm_eventgrid_topic" "main" {
  name                = "alert-events"
  location            = azurerm_resource_group.main.location
  resource_group_name = azurerm_resource_group.main.name
  input_schema        = "EventGridSchema"
}