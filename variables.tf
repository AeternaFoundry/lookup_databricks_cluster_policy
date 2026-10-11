variable "cluster_policy_lookup" {
  description = <<EOT
Map of cluster_policy_lookup, attributes below
Optional:
    - definition
    - description
    - is_default
    - max_clusters_per_user
    - name
    - policy_family_definition_overrides
    - policy_family_id
    - provider_config (block):
        - workspace_id (optional)
EOT

  type = map(object({
    definition                         = optional(string)
    description                        = optional(string)
    is_default                         = optional(bool)
    max_clusters_per_user              = optional(number)
    name                               = optional(string)
    policy_family_definition_overrides = optional(string)
    policy_family_id                   = optional(string)
    provider_config = optional(object({
      workspace_id = optional(string)
    }))
  }))
}

