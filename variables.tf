variable "ecr_pull_through_cache_rules" {
  description = <<EOT
Map of ecr_pull_through_cache_rules, attributes below
Required:
    - ecr_repository_prefix
    - upstream_registry_url
Optional:
    - credential_arn
    - custom_role_arn
    - region
    - upstream_repository_prefix
EOT

  type = map(object({
    ecr_repository_prefix      = string
    upstream_registry_url      = string
    credential_arn             = optional(string)
    custom_role_arn            = optional(string)
    region                     = optional(string)
    upstream_repository_prefix = optional(string)
  }))
  validation {
    condition = alltrue([
      for k, v in var.ecr_pull_through_cache_rules : (
        (length(v.ecr_repository_prefix) >= 2 && length(v.ecr_repository_prefix) <= 30) && (can(regex("^((?:[a-z0-9]+(?:[._-][a-z0-9]+)*/)*[a-z0-9]+(?:[._-][a-z0-9]+)*/?|ROOT)$", v.ecr_repository_prefix)))
      )
    ])
    error_message = "all of: must be between 2 and 30 characters; must be 'ROOT' or only include alphanumeric, underscore, period, hyphen, or slash characters"
  }
  validation {
    condition = alltrue([
      for k, v in var.ecr_pull_through_cache_rules : (
        v.upstream_repository_prefix == null || ((length(v.upstream_repository_prefix) >= 2 && length(v.upstream_repository_prefix) <= 30) && (can(regex("^((?:[a-z0-9]+(?:[._-][a-z0-9]+)*/)*[a-z0-9]+(?:[._-][a-z0-9]+)*/?|ROOT)$", v.upstream_repository_prefix))))
      )
    ])
    error_message = "all of: must be between 2 and 30 characters; must be 'ROOT' or only include alphanumeric, underscore, period, hyphen, or slash characters"
  }
  # Note: 2 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

