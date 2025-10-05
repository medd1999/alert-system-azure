variable "resource_group_name" {
    type        = string
    description = "Resource Group name"
}

variable "app_service_id" {
    type        = string
    description = "App Service ID"
}

variable "cpu_threshold" {
    type        = number
    description = "CPU usage threshold percentage for alerts"
    default     = 80
}

variable "action_group_id" {
    type        = string
    description = "Action Group ID for notifications"
    default     = null
}