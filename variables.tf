variable "redis_caches" {
  description = <<EOT
Map of redis_caches, attributes below
Required:
    - capacity
    - family
    - location
    - name
    - resource_group_name
    - sku_name
Optional:
    - access_keys_authentication_enabled
    - minimum_tls_version
    - non_ssl_port_enabled
    - private_static_ip_address
    - public_network_access_enabled
    - redis_version
    - replicas_per_master
    - replicas_per_primary
    - shard_count
    - subnet_id
    - tags
    - tenant_settings
    - zones
    - identity (block)
    - patch_schedule (block)
    - redis_configuration (block)
Nested redis_cache_access_policies (azurerm_redis_cache_access_policy):
    Required:
        - name
        - permissions
Nested redis_cache_access_policy_assignments (azurerm_redis_cache_access_policy_assignment):
    Required:
        - access_policy_name
        - name
        - object_id
        - object_id_alias
Nested redis_firewall_rules (azurerm_redis_firewall_rule):
    Required:
        - end_ip
        - name
        - resource_group_name
        - start_ip
EOT

  type = map(object({
    capacity                           = number
    family                             = string
    location                           = string
    name                               = string
    resource_group_name                = string
    sku_name                           = string
    tags                               = optional(map(string))
    subnet_id                          = optional(string)
    shard_count                        = optional(number)
    replicas_per_primary               = optional(number)
    replicas_per_master                = optional(number)
    private_static_ip_address          = optional(string)
    public_network_access_enabled      = optional(bool) # Default: true
    tenant_settings                    = optional(map(string))
    non_ssl_port_enabled               = optional(bool)   # Default: false
    minimum_tls_version                = optional(string) # Default: "1.2"
    access_keys_authentication_enabled = optional(bool)   # Default: true
    redis_version                      = optional(string) # Default: "6"
    zones                              = optional(set(string))
    identity = optional(object({
      identity_ids = optional(set(string))
      type         = string
    }))
    patch_schedule = optional(object({
      day_of_week        = string
      maintenance_window = optional(string) # Default: "PT5H"
      start_hour_utc     = optional(number)
    }))
    redis_configuration = optional(object({
      active_directory_authentication_enabled = optional(bool)
      aof_backup_enabled                      = optional(bool)
      aof_storage_connection_string_0         = optional(string)
      aof_storage_connection_string_1         = optional(string)
      authentication_enabled                  = optional(bool) # Default: true
      data_persistence_authentication_method  = optional(string)
      maxfragmentationmemory_reserved         = optional(number)
      maxmemory_delta                         = optional(number)
      maxmemory_policy                        = optional(string) # Default: "volatile-lru"
      maxmemory_reserved                      = optional(number)
      notify_keyspace_events                  = optional(string)
      rdb_backup_enabled                      = optional(bool)
      rdb_backup_frequency                    = optional(number)
      rdb_backup_max_snapshot_count           = optional(number)
      rdb_storage_connection_string           = optional(string)
      storage_account_subscription_id         = optional(string)
    }))
    redis_cache_access_policies = optional(map(object({
      name        = string
      permissions = string
    })))
    redis_cache_access_policy_assignments = optional(map(object({
      access_policy_name = string
      name               = string
      object_id          = string
      object_id_alias    = string
    })))
    redis_firewall_rules = optional(map(object({
      end_ip              = string
      name                = string
      resource_group_name = string
      start_ip            = string
    })))
  }))

  validation {
    condition = alltrue(concat(
      [for kk in keys(var.redis_caches) : !strcontains(kk, "/")],
      flatten([for k0, v0 in var.redis_caches : [for kk in keys(coalesce(v0.redis_cache_access_policies, {})) : !strcontains(kk, "/")]]),
      flatten([for k0, v0 in var.redis_caches : [for kk in keys(coalesce(v0.redis_cache_access_policy_assignments, {})) : !strcontains(kk, "/")]]),
      flatten([for k0, v0 in var.redis_caches : [for kk in keys(coalesce(v0.redis_firewall_rules, {})) : !strcontains(kk, "/")]])
    ))
    error_message = "Map keys in this package must not contain '/': it is used internally as a nesting-key separator, so a key containing it can silently collide two different nested entries into one. Rename the offending key(s)."
  }
}
