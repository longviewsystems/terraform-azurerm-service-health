# variables.tfvars
service_health_activity_log_alert_name = "service-health-alert-terratest"
action_group_name                      = "service-health-alert-action-group-terratest"
location                               = "westus"
service_health_locations               = ["westus"]
service_health_events                  = ["Maintenance", "Incident", "ActionRequired", "Informational", "Security"]
email_address                          = "test@gamil.com"
tags = {
  "Environment" = "Demo"
}
