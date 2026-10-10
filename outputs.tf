output "appintegrations_data_integrations_id" {
  description = "Map of id values across all appintegrations_data_integrations, keyed the same as var.appintegrations_data_integrations"
  value       = { for k, v in aws_appintegrations_data_integration.appintegrations_data_integrations : k => v.id if v.id != null && length(v.id) > 0 }
}
output "appintegrations_data_integrations_arn" {
  description = "Map of arn values across all appintegrations_data_integrations, keyed the same as var.appintegrations_data_integrations"
  value       = { for k, v in aws_appintegrations_data_integration.appintegrations_data_integrations : k => v.arn if v.arn != null && length(v.arn) > 0 }
}
output "appintegrations_data_integrations_description" {
  description = "Map of description values across all appintegrations_data_integrations, keyed the same as var.appintegrations_data_integrations"
  value       = { for k, v in aws_appintegrations_data_integration.appintegrations_data_integrations : k => v.description if v.description != null && length(v.description) > 0 }
}
output "appintegrations_data_integrations_kms_key" {
  description = "Map of kms_key values across all appintegrations_data_integrations, keyed the same as var.appintegrations_data_integrations"
  value       = { for k, v in aws_appintegrations_data_integration.appintegrations_data_integrations : k => v.kms_key if v.kms_key != null && length(v.kms_key) > 0 }
}
output "appintegrations_data_integrations_name" {
  description = "Map of name values across all appintegrations_data_integrations, keyed the same as var.appintegrations_data_integrations"
  value       = { for k, v in aws_appintegrations_data_integration.appintegrations_data_integrations : k => v.name if v.name != null && length(v.name) > 0 }
}
output "appintegrations_data_integrations_region" {
  description = "Map of region values across all appintegrations_data_integrations, keyed the same as var.appintegrations_data_integrations"
  value       = { for k, v in aws_appintegrations_data_integration.appintegrations_data_integrations : k => v.region if v.region != null && length(v.region) > 0 }
}
output "appintegrations_data_integrations_schedule_config" {
  description = "Map of schedule_config values across all appintegrations_data_integrations, keyed the same as var.appintegrations_data_integrations"
  value       = { for k, v in aws_appintegrations_data_integration.appintegrations_data_integrations : k => one(v.schedule_config) if v.schedule_config != null && length(v.schedule_config) > 0 }
}
output "appintegrations_data_integrations_source_uri" {
  description = "Map of source_uri values across all appintegrations_data_integrations, keyed the same as var.appintegrations_data_integrations"
  value       = { for k, v in aws_appintegrations_data_integration.appintegrations_data_integrations : k => v.source_uri if v.source_uri != null && length(v.source_uri) > 0 }
}
output "appintegrations_data_integrations_tags" {
  description = "Map of tags values across all appintegrations_data_integrations, keyed the same as var.appintegrations_data_integrations"
  value       = { for k, v in aws_appintegrations_data_integration.appintegrations_data_integrations : k => v.tags if v.tags != null && length(v.tags) > 0 }
}
output "appintegrations_data_integrations_tags_all" {
  description = "Map of tags_all values across all appintegrations_data_integrations, keyed the same as var.appintegrations_data_integrations"
  value       = { for k, v in aws_appintegrations_data_integration.appintegrations_data_integrations : k => v.tags_all if v.tags_all != null && length(v.tags_all) > 0 }
}

