## App Service Module

This module provisions a Linux-based Azure App Service Plan and Web App.

### Inputs

| Name | Description | Type | Default |
|------|-------------|------|---------|
| `resource_group_name` | Resource group name | `string` | — |
| `location` | Azure region | `string` | — |
| `app_service_plan_name` | Name of the App Service Plan | `string` | — |
| `app_service_name` | Name of the App Service | `string` | — |
| `sku_tier` | Plan tier | `string` | `"Standard"` |
| `sku_size` | Plan size | `string` | `"S1"` |
| `linux_fx_version` | Runtime stack | `string` | `"PYTHON|3.10"` |
| `app_settings` | App settings | `map(string)` | `{}` |

### Outputs

| Name | Description |
|------|-------------|
| `app_service_id` | ID of the App Service |
| `app_service_default_hostname` | Default hostname |
