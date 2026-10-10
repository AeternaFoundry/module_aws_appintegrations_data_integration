resource "aws_appintegrations_data_integration" "appintegrations_data_integrations" {
  for_each = var.appintegrations_data_integrations

  kms_key     = each.value.kms_key
  name        = each.value.name
  source_uri  = each.value.source_uri
  description = each.value.description
  region      = each.value.region
  tags        = each.value.tags
  tags_all    = each.value.tags_all

  schedule_config {
    first_execution_from = each.value.schedule_config.first_execution_from
    object               = each.value.schedule_config.object
    schedule_expression  = each.value.schedule_config.schedule_expression
  }
}

