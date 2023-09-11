output "activity_log_alert_id" {
  description = "The ID of the Activity Log Alert."
  value       = azurerm_monitor_activity_log_alert.service_health_alert.id
}

output "action_group_id" {
  description = "The ID of the Action Group."
  value       = azurerm_monitor_action_group.action_group.id
}