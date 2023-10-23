resource "azurerm_monitor_activity_log_alert" "service_health_alert" {
  name                = var.service_health_activity_log_alert_name
  resource_group_name = var.service_health_resource_group
  scopes              = var.scope_subscription_id
  criteria {
    category = "ServiceHealth"
    service_health {
      events    = var.service_health_events
      locations = var.service_health_locations
    }
  }

  action {
    action_group_id = var.action_group_id
  }

  tags = merge(var.tags, { "default" = "default" })

}