/***************************************************************/
/*** Terratest only resources
/***************************************************************/
data "azurerm_subscription" "current" {}

module "naming" {
  source  = "Azure/naming/azurerm"
  version = "0.3.0"
  prefix  = ["terratest-monitoring"]
}
resource "azurerm_resource_group" "resource_group" {
  name     = module.naming.resource_group.name
  location = var.location
}


/***************************************************************/
/*** Resources to be tested
/***************************************************************/

resource "azurerm_resource_group" "service_health" {
  name     = module.naming.resource_group.name
  location = var.location
}

resource "azurerm_monitor_action_group" "action_group" {
  name                = "service-health-alert-action-group"
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
  name                = "service-health-alert-name"
  resource_group_name = azurerm_resource_group.service_health.name
  scopes              = [data.azurerm_subscription.current.id]
  enabled             = true

  criteria {
    category = "ServiceHealth"
    service_health {
      #services = "AppService"
    }
  }

  action {
    action_group_id = azurerm_monitor_action_group.action_group.id
  }

  tags = merge(var.tags, { "default" = "default" })

}