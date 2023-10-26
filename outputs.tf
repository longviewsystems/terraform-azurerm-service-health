output "activity_log_alert_id" {
  description = "The ID of the Activity Log Alert."
  value       = azurerm_monitor_activity_log_alert.service_health_alert.id
}