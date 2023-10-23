variable "location" {
  type        = string
  description = "location"
}

variable "email_address" {
  type        = string
  description = "Recipient email address"
}

variable "service_health_activity_log_alert_name" {
  type        = string
  description = "Name of the service alert"
}

variable "action_group_name" {
  type        = string
  description = "Name of the action group"
}

variable "tags" {
  type        = map(string)
  description = "value of the tags"
}
variable "service_health_locations" {
  type        = list(string)
  description = "List of the locations for service health"
}

variable "service_health_events" {
  type        = list(string)
  description = "Service health event"
}