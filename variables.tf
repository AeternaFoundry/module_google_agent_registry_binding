variable "agent_registry_bindings" {
  description = <<EOT
Map of agent_registry_bindings, attributes below
Required:
    - binding_id
    - location
    - auth_provider_binding (block):
        - auth_provider (required)
        - continue_uri (optional)
        - scopes (optional)
    - target (block):
        - identifier (required)
Optional:
    - deletion_policy
    - description
    - display_name
    - project
    - source (block):
        - identifier (required)
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - update (optional)
EOT

  type = map(object({
    binding_id      = string
    location        = string
    deletion_policy = optional(string)
    description     = optional(string)
    display_name    = optional(string)
    project         = optional(string)
    auth_provider_binding = object({
      auth_provider = string
      continue_uri  = optional(string)
      scopes        = optional(list(string))
    })
    target = object({
      identifier = string
    })
    source = optional(object({
      identifier = string
    }))
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      update = optional(string)
    }))
  }))
}

