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
| [azurerm_monitor_action_group.action_group](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/monitor_action_group) | resource |
| [azurerm_monitor_activity_log_alert.service_health_alert](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/monitor_activity_log_alert) | resource |
| [azurerm_resource_group.service_health](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/resource_group) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_action_group_name"></a> [action\_group\_name](#input\_action\_group\_name) | Name of the action group | `string` | n/a | yes |
| <a name="input_email_address"></a> [email\_address](#input\_email\_address) | Recipient email address | `string` | n/a | yes |
| <a name="input_location"></a> [location](#input\_location) | location | `string` | n/a | yes |
| <a name="input_scope_subscription_id"></a> [scope\_subscription\_id](#input\_scope\_subscription\_id) | List of the subscription ids for scope | `list(string)` | n/a | yes |
| <a name="input_service_health_activity_log_alert_name"></a> [service\_health\_activity\_log\_alert\_name](#input\_service\_health\_activity\_log\_alert\_name) | Name of the service alert | `string` | n/a | yes |
| <a name="input_service_health_resource_group_name"></a> [service\_health\_resource\_group\_name](#input\_service\_health\_resource\_group\_name) | Name of the resource group for service health | `string` | n/a | yes |
| <a name="input_tags"></a> [tags](#input\_tags) | Tags | `map(string)` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_action_group_id"></a> [action\_group\_id](#output\_action\_group\_id) | The ID of the Action Group. |
| <a name="output_activity_log_alert_id"></a> [activity\_log\_alert\_id](#output\_activity\_log\_alert\_id) | The ID of the Activity Log Alert. |
