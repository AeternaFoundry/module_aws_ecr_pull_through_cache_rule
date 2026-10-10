output "ecr_pull_through_cache_rules_id" {
  description = "Map of id values across all ecr_pull_through_cache_rules, keyed the same as var.ecr_pull_through_cache_rules"
  value       = { for k, v in aws_ecr_pull_through_cache_rule.ecr_pull_through_cache_rules : k => v.id if v.id != null && length(v.id) > 0 }
}
output "ecr_pull_through_cache_rules_credential_arn" {
  description = "Map of credential_arn values across all ecr_pull_through_cache_rules, keyed the same as var.ecr_pull_through_cache_rules"
  value       = { for k, v in aws_ecr_pull_through_cache_rule.ecr_pull_through_cache_rules : k => v.credential_arn if v.credential_arn != null && length(v.credential_arn) > 0 }
}
output "ecr_pull_through_cache_rules_custom_role_arn" {
  description = "Map of custom_role_arn values across all ecr_pull_through_cache_rules, keyed the same as var.ecr_pull_through_cache_rules"
  value       = { for k, v in aws_ecr_pull_through_cache_rule.ecr_pull_through_cache_rules : k => v.custom_role_arn if v.custom_role_arn != null && length(v.custom_role_arn) > 0 }
}
output "ecr_pull_through_cache_rules_ecr_repository_prefix" {
  description = "Map of ecr_repository_prefix values across all ecr_pull_through_cache_rules, keyed the same as var.ecr_pull_through_cache_rules"
  value       = { for k, v in aws_ecr_pull_through_cache_rule.ecr_pull_through_cache_rules : k => v.ecr_repository_prefix if v.ecr_repository_prefix != null && length(v.ecr_repository_prefix) > 0 }
}
output "ecr_pull_through_cache_rules_region" {
  description = "Map of region values across all ecr_pull_through_cache_rules, keyed the same as var.ecr_pull_through_cache_rules"
  value       = { for k, v in aws_ecr_pull_through_cache_rule.ecr_pull_through_cache_rules : k => v.region if v.region != null && length(v.region) > 0 }
}
output "ecr_pull_through_cache_rules_registry_id" {
  description = "Map of registry_id values across all ecr_pull_through_cache_rules, keyed the same as var.ecr_pull_through_cache_rules"
  value       = { for k, v in aws_ecr_pull_through_cache_rule.ecr_pull_through_cache_rules : k => v.registry_id if v.registry_id != null && length(v.registry_id) > 0 }
}
output "ecr_pull_through_cache_rules_upstream_registry_url" {
  description = "Map of upstream_registry_url values across all ecr_pull_through_cache_rules, keyed the same as var.ecr_pull_through_cache_rules"
  value       = { for k, v in aws_ecr_pull_through_cache_rule.ecr_pull_through_cache_rules : k => v.upstream_registry_url if v.upstream_registry_url != null && length(v.upstream_registry_url) > 0 }
}
output "ecr_pull_through_cache_rules_upstream_repository_prefix" {
  description = "Map of upstream_repository_prefix values across all ecr_pull_through_cache_rules, keyed the same as var.ecr_pull_through_cache_rules"
  value       = { for k, v in aws_ecr_pull_through_cache_rule.ecr_pull_through_cache_rules : k => v.upstream_repository_prefix if v.upstream_repository_prefix != null && length(v.upstream_repository_prefix) > 0 }
}

