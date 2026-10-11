output "cluster_policy_lookup_id" {
  description = "Map of id values across all cluster_policy_lookup, keyed the same as var.cluster_policy_lookup except keys with no id are omitted"
  value       = { for k, v in data.databricks_cluster_policy.cluster_policy_lookup : k => v.id if v.id != null && length(v.id) > 0 }
}
output "cluster_policy_lookup_definition" {
  description = "Map of definition values across all cluster_policy_lookup, keyed the same as var.cluster_policy_lookup except keys with no definition are omitted"
  value       = { for k, v in data.databricks_cluster_policy.cluster_policy_lookup : k => v.definition if v.definition != null && length(v.definition) > 0 }
}
output "cluster_policy_lookup_description" {
  description = "Map of description values across all cluster_policy_lookup, keyed the same as var.cluster_policy_lookup except keys with no description are omitted"
  value       = { for k, v in data.databricks_cluster_policy.cluster_policy_lookup : k => v.description if v.description != null && length(v.description) > 0 }
}
output "cluster_policy_lookup_is_default" {
  description = "Map of is_default values across all cluster_policy_lookup, keyed the same as var.cluster_policy_lookup except keys with no is_default are omitted"
  value       = { for k, v in data.databricks_cluster_policy.cluster_policy_lookup : k => v.is_default if v.is_default != null }
}
output "cluster_policy_lookup_max_clusters_per_user" {
  description = "Map of max_clusters_per_user values across all cluster_policy_lookup, keyed the same as var.cluster_policy_lookup except keys with no max_clusters_per_user are omitted"
  value       = { for k, v in data.databricks_cluster_policy.cluster_policy_lookup : k => v.max_clusters_per_user if v.max_clusters_per_user != null }
}
output "cluster_policy_lookup_name" {
  description = "Map of name values across all cluster_policy_lookup, keyed the same as var.cluster_policy_lookup except keys with no name are omitted"
  value       = { for k, v in data.databricks_cluster_policy.cluster_policy_lookup : k => v.name if v.name != null && length(v.name) > 0 }
}
output "cluster_policy_lookup_policy_family_definition_overrides" {
  description = "Map of policy_family_definition_overrides values across all cluster_policy_lookup, keyed the same as var.cluster_policy_lookup except keys with no policy_family_definition_overrides are omitted"
  value       = { for k, v in data.databricks_cluster_policy.cluster_policy_lookup : k => v.policy_family_definition_overrides if v.policy_family_definition_overrides != null && length(v.policy_family_definition_overrides) > 0 }
}
output "cluster_policy_lookup_policy_family_id" {
  description = "Map of policy_family_id values across all cluster_policy_lookup, keyed the same as var.cluster_policy_lookup except keys with no policy_family_id are omitted"
  value       = { for k, v in data.databricks_cluster_policy.cluster_policy_lookup : k => v.policy_family_id if v.policy_family_id != null && length(v.policy_family_id) > 0 }
}
output "cluster_policy_lookup_provider_config" {
  description = "Map of provider_config values across all cluster_policy_lookup, keyed the same as var.cluster_policy_lookup except keys with no provider_config are omitted"
  value       = { for k, v in data.databricks_cluster_policy.cluster_policy_lookup : k => one(v.provider_config) if v.provider_config != null && length(v.provider_config) > 0 }
}

