resource "google_agent_registry_binding" "agent_registry_bindings" {
  for_each = var.agent_registry_bindings

  binding_id      = each.value.binding_id
  location        = each.value.location
  deletion_policy = each.value.deletion_policy
  description     = each.value.description
  display_name    = each.value.display_name
  project         = each.value.project

  auth_provider_binding {
    auth_provider = each.value.auth_provider_binding.auth_provider
    continue_uri  = each.value.auth_provider_binding.continue_uri
    scopes        = each.value.auth_provider_binding.scopes
  }

  target {
    identifier = each.value.target.identifier
  }

  dynamic "source" {
    for_each = each.value.source != null ? [each.value.source] : []
    content {
      identifier = source.value.identifier
    }
  }

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
      update = timeouts.value.update
    }
  }
}

