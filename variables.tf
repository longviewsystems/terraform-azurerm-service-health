variable "service_health_activity_log_alert_name" {
  type        = string
  description = "Name of the service alert"
}

variable "tags" {
  type        = map(string)
  description = "Tags"
}

variable "scope_subscription_id" {
  type        = list(string)
  description = "List of the subscription ids (resource Ids) for scope"
}

variable "action_group_id" {
  type        = string
  description = "Action group id"
}

variable "service_health_resource_group" {
  type        = string
  description = "Name of the resource group for service health"
}

variable "service_health_locations" {
  type        = list(string)
  description = "List of the locations for service health"
}

variable "service_health_events" {
  type        = list(string)
  description = "Service health event"
}
