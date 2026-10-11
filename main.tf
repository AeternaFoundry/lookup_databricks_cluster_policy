data "databricks_cluster_policy" "cluster_policy_lookup" {
  for_each = var.cluster_policy_lookup

  definition                         = each.value.definition
  description                        = each.value.description
  is_default                         = each.value.is_default
  max_clusters_per_user              = each.value.max_clusters_per_user
  name                               = each.value.name
  policy_family_definition_overrides = each.value.policy_family_definition_overrides
  policy_family_id                   = each.value.policy_family_id

  dynamic "provider_config" {
    for_each = each.value.provider_config != null ? [each.value.provider_config] : []
    content {
      workspace_id = provider_config.value.workspace_id
    }
  }
}

