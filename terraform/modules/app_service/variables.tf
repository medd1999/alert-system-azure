variable "resource_group_name" {
    type = string
    description =  "Resource Group name"
}

variable "location" {
    type = string
    description =  "Azure Region"
}

variable "app_service_plan_name" {
    type = string
    description =  "App Service Plan name"
}

variable "app_service_name" {
    type = string
    description =  "App Service name"
}

variable "sku_tirer" {
    type = string
    description =  "App Service Plan SKU tier"
    default = "Standard"
}

variable "sku_size" {
    type = string
    description =  "App Service Plan SKU size"
    default = "S1"
}

variable "linux_fx_version" {
    type = string
    default = "PYTHON|3.10"
    description =  "Linux FX Version (runtime stack) for the App Service"
}

variable "app_settings" {
    type = map(string)
    description =  "App Service app settings"
    default = {}
}