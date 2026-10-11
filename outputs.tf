output "agent_registry_bindings_id" {
  description = "Map of id values across all agent_registry_bindings, keyed the same as var.agent_registry_bindings except keys with no id are omitted"
  value       = { for k, v in google_agent_registry_binding.agent_registry_bindings : k => v.id if v.id != null && length(v.id) > 0 }
}
output "agent_registry_bindings_auth_provider_binding" {
  description = "Map of auth_provider_binding values across all agent_registry_bindings, keyed the same as var.agent_registry_bindings except keys with no auth_provider_binding are omitted"
  value       = { for k, v in google_agent_registry_binding.agent_registry_bindings : k => one(v.auth_provider_binding) if v.auth_provider_binding != null && length(v.auth_provider_binding) > 0 }
}
output "agent_registry_bindings_binding_id" {
  description = "Map of binding_id values across all agent_registry_bindings, keyed the same as var.agent_registry_bindings except keys with no binding_id are omitted"
  value       = { for k, v in google_agent_registry_binding.agent_registry_bindings : k => v.binding_id if v.binding_id != null && length(v.binding_id) > 0 }
}
output "agent_registry_bindings_create_time" {
  description = "Map of create_time values across all agent_registry_bindings, keyed the same as var.agent_registry_bindings except keys with no create_time are omitted"
  value       = { for k, v in google_agent_registry_binding.agent_registry_bindings : k => v.create_time if v.create_time != null && length(v.create_time) > 0 }
}
output "agent_registry_bindings_deletion_policy" {
  description = "Map of deletion_policy values across all agent_registry_bindings, keyed the same as var.agent_registry_bindings except keys with no deletion_policy are omitted"
  value       = { for k, v in google_agent_registry_binding.agent_registry_bindings : k => v.deletion_policy if v.deletion_policy != null && length(v.deletion_policy) > 0 }
}
output "agent_registry_bindings_description" {
  description = "Map of description values across all agent_registry_bindings, keyed the same as var.agent_registry_bindings except keys with no description are omitted"
  value       = { for k, v in google_agent_registry_binding.agent_registry_bindings : k => v.description if v.description != null && length(v.description) > 0 }
}
output "agent_registry_bindings_display_name" {
  description = "Map of display_name values across all agent_registry_bindings, keyed the same as var.agent_registry_bindings except keys with no display_name are omitted"
  value       = { for k, v in google_agent_registry_binding.agent_registry_bindings : k => v.display_name if v.display_name != null && length(v.display_name) > 0 }
}
output "agent_registry_bindings_location" {
  description = "Map of location values across all agent_registry_bindings, keyed the same as var.agent_registry_bindings except keys with no location are omitted"
  value       = { for k, v in google_agent_registry_binding.agent_registry_bindings : k => v.location if v.location != null && length(v.location) > 0 }
}
output "agent_registry_bindings_name" {
  description = "Map of name values across all agent_registry_bindings, keyed the same as var.agent_registry_bindings except keys with no name are omitted"
  value       = { for k, v in google_agent_registry_binding.agent_registry_bindings : k => v.name if v.name != null && length(v.name) > 0 }
}
output "agent_registry_bindings_project" {
  description = "Map of project values across all agent_registry_bindings, keyed the same as var.agent_registry_bindings except keys with no project are omitted"
  value       = { for k, v in google_agent_registry_binding.agent_registry_bindings : k => v.project if v.project != null && length(v.project) > 0 }
}
output "agent_registry_bindings_source" {
  description = "Map of source values across all agent_registry_bindings, keyed the same as var.agent_registry_bindings except keys with no source are omitted"
  value       = { for k, v in google_agent_registry_binding.agent_registry_bindings : k => one(v.source) if v.source != null && length(v.source) > 0 }
}
output "agent_registry_bindings_target" {
  description = "Map of target values across all agent_registry_bindings, keyed the same as var.agent_registry_bindings except keys with no target are omitted"
  value       = { for k, v in google_agent_registry_binding.agent_registry_bindings : k => one(v.target) if v.target != null && length(v.target) > 0 }
}
output "agent_registry_bindings_update_time" {
  description = "Map of update_time values across all agent_registry_bindings, keyed the same as var.agent_registry_bindings except keys with no update_time are omitted"
  value       = { for k, v in google_agent_registry_binding.agent_registry_bindings : k => v.update_time if v.update_time != null && length(v.update_time) > 0 }
}

