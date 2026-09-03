locals {
  redis_caches = { for k1, v1 in var.redis_caches : k1 => { access_keys_authentication_enabled = v1.access_keys_authentication_enabled, capacity = v1.capacity, family = v1.family, identity = v1.identity, location = v1.location, minimum_tls_version = v1.minimum_tls_version, name = v1.name, non_ssl_port_enabled = v1.non_ssl_port_enabled, patch_schedule = v1.patch_schedule, private_static_ip_address = v1.private_static_ip_address, public_network_access_enabled = v1.public_network_access_enabled, redis_configuration = v1.redis_configuration, redis_version = v1.redis_version, replicas_per_master = v1.replicas_per_master, replicas_per_primary = v1.replicas_per_primary, resource_group_name = v1.resource_group_name, shard_count = v1.shard_count, sku_name = v1.sku_name, subnet_id = v1.subnet_id, tags = v1.tags, tenant_settings = v1.tenant_settings, zones = v1.zones } }

  redis_cache_access_policies = merge([
    for k1, v1 in var.redis_caches : {
      for k2, v2 in coalesce(v1.redis_cache_access_policies, {}) :
      "${k1}/${k2}" => merge(v2, {
        redis_cache_id = module.redis_caches.redis_caches_id["${k1}"]
      })
    }
  ]...)

  redis_cache_access_policy_assignments = merge([
    for k1, v1 in var.redis_caches : {
      for k2, v2 in coalesce(v1.redis_cache_access_policy_assignments, {}) :
      "${k1}/${k2}" => merge(v2, {
        redis_cache_id = module.redis_caches.redis_caches_id["${k1}"]
      })
    }
  ]...)

  redis_firewall_rules = merge([
    for k1, v1 in var.redis_caches : {
      for k2, v2 in coalesce(v1.redis_firewall_rules, {}) :
      "${k1}/${k2}" => merge(v2, {
        redis_cache_name = module.redis_caches.redis_caches_name["${k1}"]
      })
    }
  ]...)
}

module "redis_caches" {
  source       = "git::https://github.com/AeternaModules/azurerm_redis_cache.git?ref=v5.0.1"
  redis_caches = local.redis_caches
}

module "redis_cache_access_policies" {
  source                      = "git::https://github.com/AeternaModules/azurerm_redis_cache_access_policy.git?ref=v5.0.1"
  redis_cache_access_policies = local.redis_cache_access_policies
  depends_on                  = [module.redis_caches]
}

module "redis_cache_access_policy_assignments" {
  source                                = "git::https://github.com/AeternaModules/azurerm_redis_cache_access_policy_assignment.git?ref=v5.0.1"
  redis_cache_access_policy_assignments = local.redis_cache_access_policy_assignments
  depends_on                            = [module.redis_caches]
}

module "redis_firewall_rules" {
  source               = "git::https://github.com/AeternaModules/azurerm_redis_firewall_rule.git?ref=v5.0.1"
  redis_firewall_rules = local.redis_firewall_rules
  depends_on           = [module.redis_caches]
}

