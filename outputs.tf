# --- azurerm_redis_cache ---
output "redis_caches_access_keys_authentication_enabled" {
  description = "Map of access_keys_authentication_enabled values across all redis_caches, keyed the same as var.redis_caches"
  value       = module.redis_caches.redis_caches_access_keys_authentication_enabled
}

output "redis_caches_capacity" {
  description = "Map of capacity values across all redis_caches, keyed the same as var.redis_caches"
  value       = module.redis_caches.redis_caches_capacity
}

output "redis_caches_family" {
  description = "Map of family values across all redis_caches, keyed the same as var.redis_caches"
  value       = module.redis_caches.redis_caches_family
}

output "redis_caches_hostname" {
  description = "Map of hostname values across all redis_caches, keyed the same as var.redis_caches"
  value       = module.redis_caches.redis_caches_hostname
}

output "redis_caches_identity" {
  description = "Map of identity values across all redis_caches, keyed the same as var.redis_caches"
  value       = module.redis_caches.redis_caches_identity
}

output "redis_caches_location" {
  description = "Map of location values across all redis_caches, keyed the same as var.redis_caches"
  value       = module.redis_caches.redis_caches_location
}

output "redis_caches_minimum_tls_version" {
  description = "Map of minimum_tls_version values across all redis_caches, keyed the same as var.redis_caches"
  value       = module.redis_caches.redis_caches_minimum_tls_version
}

output "redis_caches_name" {
  description = "Map of name values across all redis_caches, keyed the same as var.redis_caches"
  value       = module.redis_caches.redis_caches_name
}

output "redis_caches_non_ssl_port_enabled" {
  description = "Map of non_ssl_port_enabled values across all redis_caches, keyed the same as var.redis_caches"
  value       = module.redis_caches.redis_caches_non_ssl_port_enabled
}

output "redis_caches_patch_schedule" {
  description = "Map of patch_schedule values across all redis_caches, keyed the same as var.redis_caches"
  value       = module.redis_caches.redis_caches_patch_schedule
}

output "redis_caches_port" {
  description = "Map of port values across all redis_caches, keyed the same as var.redis_caches"
  value       = module.redis_caches.redis_caches_port
}

output "redis_caches_primary_access_key" {
  description = "Map of primary_access_key values across all redis_caches, keyed the same as var.redis_caches"
  value       = module.redis_caches.redis_caches_primary_access_key
  sensitive   = true
}

output "redis_caches_primary_connection_string" {
  description = "Map of primary_connection_string values across all redis_caches, keyed the same as var.redis_caches"
  value       = module.redis_caches.redis_caches_primary_connection_string
  sensitive   = true
}

output "redis_caches_private_static_ip_address" {
  description = "Map of private_static_ip_address values across all redis_caches, keyed the same as var.redis_caches"
  value       = module.redis_caches.redis_caches_private_static_ip_address
}

output "redis_caches_public_network_access_enabled" {
  description = "Map of public_network_access_enabled values across all redis_caches, keyed the same as var.redis_caches"
  value       = module.redis_caches.redis_caches_public_network_access_enabled
}

output "redis_caches_redis_configuration" {
  description = "Map of redis_configuration values across all redis_caches, keyed the same as var.redis_caches"
  value       = module.redis_caches.redis_caches_redis_configuration
  sensitive   = true
}

output "redis_caches_redis_version" {
  description = "Map of redis_version values across all redis_caches, keyed the same as var.redis_caches"
  value       = module.redis_caches.redis_caches_redis_version
}

output "redis_caches_replicas_per_master" {
  description = "Map of replicas_per_master values across all redis_caches, keyed the same as var.redis_caches"
  value       = module.redis_caches.redis_caches_replicas_per_master
}

output "redis_caches_replicas_per_primary" {
  description = "Map of replicas_per_primary values across all redis_caches, keyed the same as var.redis_caches"
  value       = module.redis_caches.redis_caches_replicas_per_primary
}

output "redis_caches_resource_group_name" {
  description = "Map of resource_group_name values across all redis_caches, keyed the same as var.redis_caches"
  value       = module.redis_caches.redis_caches_resource_group_name
}

output "redis_caches_secondary_access_key" {
  description = "Map of secondary_access_key values across all redis_caches, keyed the same as var.redis_caches"
  value       = module.redis_caches.redis_caches_secondary_access_key
  sensitive   = true
}

output "redis_caches_secondary_connection_string" {
  description = "Map of secondary_connection_string values across all redis_caches, keyed the same as var.redis_caches"
  value       = module.redis_caches.redis_caches_secondary_connection_string
  sensitive   = true
}

output "redis_caches_shard_count" {
  description = "Map of shard_count values across all redis_caches, keyed the same as var.redis_caches"
  value       = module.redis_caches.redis_caches_shard_count
}

output "redis_caches_sku_name" {
  description = "Map of sku_name values across all redis_caches, keyed the same as var.redis_caches"
  value       = module.redis_caches.redis_caches_sku_name
}

output "redis_caches_ssl_port" {
  description = "Map of ssl_port values across all redis_caches, keyed the same as var.redis_caches"
  value       = module.redis_caches.redis_caches_ssl_port
}

output "redis_caches_subnet_id" {
  description = "Map of subnet_id values across all redis_caches, keyed the same as var.redis_caches"
  value       = module.redis_caches.redis_caches_subnet_id
}

output "redis_caches_tags" {
  description = "Map of tags values across all redis_caches, keyed the same as var.redis_caches"
  value       = module.redis_caches.redis_caches_tags
}

output "redis_caches_tenant_settings" {
  description = "Map of tenant_settings values across all redis_caches, keyed the same as var.redis_caches"
  value       = module.redis_caches.redis_caches_tenant_settings
}

output "redis_caches_zones" {
  description = "Map of zones values across all redis_caches, keyed the same as var.redis_caches"
  value       = module.redis_caches.redis_caches_zones
}

# --- azurerm_redis_cache_access_policy ---
output "redis_cache_access_policies_name" {
  description = "Map of name values across all redis_cache_access_policies, keyed the same as var.redis_cache_access_policies"
  value       = module.redis_cache_access_policies.redis_cache_access_policies_name
}

output "redis_cache_access_policies_permissions" {
  description = "Map of permissions values across all redis_cache_access_policies, keyed the same as var.redis_cache_access_policies"
  value       = module.redis_cache_access_policies.redis_cache_access_policies_permissions
}

output "redis_cache_access_policies_redis_cache_id" {
  description = "Map of redis_cache_id values across all redis_cache_access_policies, keyed the same as var.redis_cache_access_policies"
  value       = module.redis_cache_access_policies.redis_cache_access_policies_redis_cache_id
}

# --- azurerm_redis_cache_access_policy_assignment ---
output "redis_cache_access_policy_assignments_access_policy_name" {
  description = "Map of access_policy_name values across all redis_cache_access_policy_assignments, keyed the same as var.redis_cache_access_policy_assignments"
  value       = module.redis_cache_access_policy_assignments.redis_cache_access_policy_assignments_access_policy_name
}

output "redis_cache_access_policy_assignments_name" {
  description = "Map of name values across all redis_cache_access_policy_assignments, keyed the same as var.redis_cache_access_policy_assignments"
  value       = module.redis_cache_access_policy_assignments.redis_cache_access_policy_assignments_name
}

output "redis_cache_access_policy_assignments_object_id" {
  description = "Map of object_id values across all redis_cache_access_policy_assignments, keyed the same as var.redis_cache_access_policy_assignments"
  value       = module.redis_cache_access_policy_assignments.redis_cache_access_policy_assignments_object_id
}

output "redis_cache_access_policy_assignments_object_id_alias" {
  description = "Map of object_id_alias values across all redis_cache_access_policy_assignments, keyed the same as var.redis_cache_access_policy_assignments"
  value       = module.redis_cache_access_policy_assignments.redis_cache_access_policy_assignments_object_id_alias
}

output "redis_cache_access_policy_assignments_redis_cache_id" {
  description = "Map of redis_cache_id values across all redis_cache_access_policy_assignments, keyed the same as var.redis_cache_access_policy_assignments"
  value       = module.redis_cache_access_policy_assignments.redis_cache_access_policy_assignments_redis_cache_id
}

# --- azurerm_redis_firewall_rule ---
output "redis_firewall_rules_end_ip" {
  description = "Map of end_ip values across all redis_firewall_rules, keyed the same as var.redis_firewall_rules"
  value       = module.redis_firewall_rules.redis_firewall_rules_end_ip
}

output "redis_firewall_rules_name" {
  description = "Map of name values across all redis_firewall_rules, keyed the same as var.redis_firewall_rules"
  value       = module.redis_firewall_rules.redis_firewall_rules_name
}

output "redis_firewall_rules_redis_cache_name" {
  description = "Map of redis_cache_name values across all redis_firewall_rules, keyed the same as var.redis_firewall_rules"
  value       = module.redis_firewall_rules.redis_firewall_rules_redis_cache_name
}

output "redis_firewall_rules_resource_group_name" {
  description = "Map of resource_group_name values across all redis_firewall_rules, keyed the same as var.redis_firewall_rules"
  value       = module.redis_firewall_rules.redis_firewall_rules_resource_group_name
}

output "redis_firewall_rules_start_ip" {
  description = "Map of start_ip values across all redis_firewall_rules, keyed the same as var.redis_firewall_rules"
  value       = module.redis_firewall_rules.redis_firewall_rules_start_ip
}


