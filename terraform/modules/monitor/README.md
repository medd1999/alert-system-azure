## Monitor Module

This module creates a CPU-based metric alert for an Azure App Service.

### Inputs

| Name | Description | Type | Default |
|------|-------------|------|---------|
| `resource_group_name` | Resource group name | `string` | — |
| `app_service_id` | ID of the App Service | `string` | — |
| `cpu_threshold` | CPU usage threshold | `number` | `80` |
| `action_group_id` | ID of the action group | `string` | `null` |

### Outputs

| Name | Description |
|------|-------------|
| `cpu_alert_id` | ID of the CPU alert |
