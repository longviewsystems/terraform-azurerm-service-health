resource "azurerm_resource_group" "service_health" {
  name     = "rg-service-health"
  location = var.location
}

resource "azurerm_monitor_action_group" "action_group" {
  name                = "example-actiongroup"
  resource_group_name = azurerm_resource_group.service_health.name
  short_name          = "svchlactgrp"

  email_receiver {
    name                    = "health-alert-email-receiver"
    email_address           = var.email_address
    use_common_alert_schema = false
  }

  tags = merge(var.tags, { "default" = "default" })
}

resource "azurerm_monitor_activity_log_alert" "service_health_alert" {
  name                = "service-health-alert"
  resource_group_name = azurerm_resource_group.service_health.name
  scopes              = var.subscription_id
  enabled             = true

  criteria {
    category = "ServiceHealth"
    enabled  = true

    all_of {
      level = "Error"
    }
    service_health {
      #service = "AppService"
    }
  }

  action {
    action_group_id = azurerm_monitor_action_group.action_group.id
  }

  tags = merge(var.tags, { "default" = "default" })

}