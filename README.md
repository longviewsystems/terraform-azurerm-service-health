## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.1 |
| <a name="requirement_azurerm"></a> [azurerm](#requirement\_azurerm) | >= 3.0.0, < 4.0.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_azurerm"></a> [azurerm](#provider\_azurerm) | >= 3.0.0, < 4.0.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [azurerm_monitor_activity_log_alert.service_health_alert](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/monitor_activity_log_alert) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_action_group_id"></a> [action\_group\_id](#input\_action\_group\_id) | Action group id | `string` | n/a | yes |
| <a name="input_scope_subscription_id"></a> [scope\_subscription\_id](#input\_scope\_subscription\_id) | List of the subscription ids (resource Ids) for scope | `list(string)` | n/a | yes |
| <a name="input_service_health_activity_log_alert_name"></a> [service\_health\_activity\_log\_alert\_name](#input\_service\_health\_activity\_log\_alert\_name) | Name of the service alert | `string` | n/a | yes |
| <a name="input_service_health_events"></a> [service\_health\_events](#input\_service\_health\_events) | Service health event | `list(string)` | n/a | yes |
| <a name="input_service_health_locations"></a> [service\_health\_locations](#input\_service\_health\_locations) | List of the locations for service health | `list(string)` | n/a | yes |
| <a name="input_service_health_resource_group"></a> [service\_health\_resource\_group](#input\_service\_health\_resource\_group) | Name of the resource group for service health | `string` | n/a | yes |
| <a name="input_tags"></a> [tags](#input\_tags) | Tags | `map(string)` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_activity_log_alert_id"></a> [activity\_log\_alert\_id](#output\_activity\_log\_alert\_id) | The ID of the Activity Log Alert. |
