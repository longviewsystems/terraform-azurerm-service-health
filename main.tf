resource "azurerm_resource_group" "service_health" {
  name     = var.service_health_resource_group_name
  location = var.location
}

resource "azurerm_monitor_action_group" "action_group" {
  name                = var.action_group_name
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
  name                = var.service_health_activity_log_alert_name
  resource_group_name = azurerm_resource_group.service_health.name
  scopes              = var.scope_subscription_id
  criteria {
    category = "ServiceHealth"
    service_health {

    }
  }

  action {
    action_group_id = azurerm_monitor_action_group.action_group.id
  }

  tags = merge(var.tags, { "default" = "default" })

}