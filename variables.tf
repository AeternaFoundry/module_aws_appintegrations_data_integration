variable "appintegrations_data_integrations" {
  description = <<EOT
Map of appintegrations_data_integrations, attributes below
Required:
    - kms_key
    - name
    - source_uri
    - schedule_config (block):
        - first_execution_from (required)
        - object (required)
        - schedule_expression (required)
Optional:
    - description
    - region
    - tags
    - tags_all
EOT

  type = map(object({
    kms_key     = string
    name        = string
    source_uri  = string
    description = optional(string)
    region      = optional(string)
    tags        = optional(map(string))
    tags_all    = optional(map(string))
    schedule_config = object({
      first_execution_from = string
      object               = string
      schedule_expression  = string
    })
  }))
  validation {
    condition = alltrue([
      for k, v in var.appintegrations_data_integrations : (
        length(v.schedule_config.first_execution_from) >= 1 && length(v.schedule_config.first_execution_from) <= 255
      )
    ])
    error_message = "must be between 1 and 255 characters"
  }
  validation {
    condition = alltrue([
      for k, v in var.appintegrations_data_integrations : (
        (length(v.schedule_config.object) >= 1 && length(v.schedule_config.object) <= 255) && (can(regex("^[0-9A-Za-z\\/\\._\\-]+$", v.schedule_config.object)))
      )
    ])
    error_message = "all of: must be between 1 and 255 characters; should be not be more than 255 alphanumeric, forward slashes, dots, underscores, or hyphen characters"
  }
  validation {
    condition = alltrue([
      for k, v in var.appintegrations_data_integrations : (
        (length(v.source_uri) >= 1 && length(v.source_uri) <= 1000) && (can(regex("^(\\w+\\:\\/\\/[\\w.-]+[\\w/!@#+=.-]+$)|(\\w+\\:\\/\\/[\\w.-]+[\\w/!@#+=.-]+[\\w/!@#+=.-]+[\\w/!@#+=.,-]+$)", v.source_uri)))
      )
    ])
    error_message = "all of: must be between 1 and 1000 characters; should be a valid source uri"
  }
  # Note: 4 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

