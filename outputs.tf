output "core_volume_backups_id" {
  description = "Map of id values across all core_volume_backups, keyed the same as var.core_volume_backups except keys with no id are omitted"
  value       = { for k, v in oci_core_volume_backup.core_volume_backups : k => v.id if v.id != null && length(v.id) > 0 }
}
output "core_volume_backups_compartment_id" {
  description = "Map of compartment_id values across all core_volume_backups, keyed the same as var.core_volume_backups except keys with no compartment_id are omitted"
  value       = { for k, v in oci_core_volume_backup.core_volume_backups : k => v.compartment_id if v.compartment_id != null && length(v.compartment_id) > 0 }
}
output "core_volume_backups_defined_tags" {
  description = "Map of defined_tags values across all core_volume_backups, keyed the same as var.core_volume_backups except keys with no defined_tags are omitted"
  value       = { for k, v in oci_core_volume_backup.core_volume_backups : k => v.defined_tags if v.defined_tags != null && length(v.defined_tags) > 0 }
}
output "core_volume_backups_display_name" {
  description = "Map of display_name values across all core_volume_backups, keyed the same as var.core_volume_backups except keys with no display_name are omitted"
  value       = { for k, v in oci_core_volume_backup.core_volume_backups : k => v.display_name if v.display_name != null && length(v.display_name) > 0 }
}
output "core_volume_backups_expiration_time" {
  description = "Map of expiration_time values across all core_volume_backups, keyed the same as var.core_volume_backups except keys with no expiration_time are omitted"
  value       = { for k, v in oci_core_volume_backup.core_volume_backups : k => v.expiration_time if v.expiration_time != null && length(v.expiration_time) > 0 }
}
output "core_volume_backups_freeform_tags" {
  description = "Map of freeform_tags values across all core_volume_backups, keyed the same as var.core_volume_backups except keys with no freeform_tags are omitted"
  value       = { for k, v in oci_core_volume_backup.core_volume_backups : k => v.freeform_tags if v.freeform_tags != null && length(v.freeform_tags) > 0 }
}
output "core_volume_backups_is_indefinite_retention_enabled" {
  description = "Map of is_indefinite_retention_enabled values across all core_volume_backups, keyed the same as var.core_volume_backups except keys with no is_indefinite_retention_enabled are omitted"
  value       = { for k, v in oci_core_volume_backup.core_volume_backups : k => v.is_indefinite_retention_enabled if v.is_indefinite_retention_enabled != null }
}
output "core_volume_backups_is_prevent_deletion_enabled" {
  description = "Map of is_prevent_deletion_enabled values across all core_volume_backups, keyed the same as var.core_volume_backups except keys with no is_prevent_deletion_enabled are omitted"
  value       = { for k, v in oci_core_volume_backup.core_volume_backups : k => v.is_prevent_deletion_enabled if v.is_prevent_deletion_enabled != null }
}
output "core_volume_backups_is_retention_lock_enabled" {
  description = "Map of is_retention_lock_enabled values across all core_volume_backups, keyed the same as var.core_volume_backups except keys with no is_retention_lock_enabled are omitted"
  value       = { for k, v in oci_core_volume_backup.core_volume_backups : k => v.is_retention_lock_enabled if v.is_retention_lock_enabled != null }
}
output "core_volume_backups_kms_key_id" {
  description = "Map of kms_key_id values across all core_volume_backups, keyed the same as var.core_volume_backups except keys with no kms_key_id are omitted"
  value       = { for k, v in oci_core_volume_backup.core_volume_backups : k => v.kms_key_id if v.kms_key_id != null && length(v.kms_key_id) > 0 }
}
output "core_volume_backups_retention_period" {
  description = "Map of retention_period values across all core_volume_backups, keyed the same as var.core_volume_backups except keys with no retention_period are omitted"
  value       = { for k, v in oci_core_volume_backup.core_volume_backups : k => one(v.retention_period) if v.retention_period != null && length(v.retention_period) > 0 }
}
output "core_volume_backups_size_in_gbs" {
  description = "Map of size_in_gbs values across all core_volume_backups, keyed the same as var.core_volume_backups except keys with no size_in_gbs are omitted"
  value       = { for k, v in oci_core_volume_backup.core_volume_backups : k => v.size_in_gbs if v.size_in_gbs != null && length(v.size_in_gbs) > 0 }
}
output "core_volume_backups_size_in_mbs" {
  description = "Map of size_in_mbs values across all core_volume_backups, keyed the same as var.core_volume_backups except keys with no size_in_mbs are omitted"
  value       = { for k, v in oci_core_volume_backup.core_volume_backups : k => v.size_in_mbs if v.size_in_mbs != null && length(v.size_in_mbs) > 0 }
}
output "core_volume_backups_source_details" {
  description = "Map of source_details values across all core_volume_backups, keyed the same as var.core_volume_backups except keys with no source_details are omitted"
  value       = { for k, v in oci_core_volume_backup.core_volume_backups : k => one(v.source_details) if v.source_details != null && length(v.source_details) > 0 }
}
output "core_volume_backups_source_type" {
  description = "Map of source_type values across all core_volume_backups, keyed the same as var.core_volume_backups except keys with no source_type are omitted"
  value       = { for k, v in oci_core_volume_backup.core_volume_backups : k => v.source_type if v.source_type != null && length(v.source_type) > 0 }
}
output "core_volume_backups_source_volume_backup_id" {
  description = "Map of source_volume_backup_id values across all core_volume_backups, keyed the same as var.core_volume_backups except keys with no source_volume_backup_id are omitted"
  value       = { for k, v in oci_core_volume_backup.core_volume_backups : k => v.source_volume_backup_id if v.source_volume_backup_id != null && length(v.source_volume_backup_id) > 0 }
}
output "core_volume_backups_state" {
  description = "Map of state values across all core_volume_backups, keyed the same as var.core_volume_backups except keys with no state are omitted"
  value       = { for k, v in oci_core_volume_backup.core_volume_backups : k => v.state if v.state != null && length(v.state) > 0 }
}
output "core_volume_backups_system_tags" {
  description = "Map of system_tags values across all core_volume_backups, keyed the same as var.core_volume_backups except keys with no system_tags are omitted"
  value       = { for k, v in oci_core_volume_backup.core_volume_backups : k => v.system_tags if v.system_tags != null && length(v.system_tags) > 0 }
}
output "core_volume_backups_time_created" {
  description = "Map of time_created values across all core_volume_backups, keyed the same as var.core_volume_backups except keys with no time_created are omitted"
  value       = { for k, v in oci_core_volume_backup.core_volume_backups : k => v.time_created if v.time_created != null && length(v.time_created) > 0 }
}
output "core_volume_backups_time_request_received" {
  description = "Map of time_request_received values across all core_volume_backups, keyed the same as var.core_volume_backups except keys with no time_request_received are omitted"
  value       = { for k, v in oci_core_volume_backup.core_volume_backups : k => v.time_request_received if v.time_request_received != null && length(v.time_request_received) > 0 }
}
output "core_volume_backups_time_retention_expires_at" {
  description = "Map of time_retention_expires_at values across all core_volume_backups, keyed the same as var.core_volume_backups except keys with no time_retention_expires_at are omitted"
  value       = { for k, v in oci_core_volume_backup.core_volume_backups : k => v.time_retention_expires_at if v.time_retention_expires_at != null && length(v.time_retention_expires_at) > 0 }
}
output "core_volume_backups_type" {
  description = "Map of type values across all core_volume_backups, keyed the same as var.core_volume_backups except keys with no type are omitted"
  value       = { for k, v in oci_core_volume_backup.core_volume_backups : k => v.type if v.type != null && length(v.type) > 0 }
}
output "core_volume_backups_unique_size_in_gbs" {
  description = "Map of unique_size_in_gbs values across all core_volume_backups, keyed the same as var.core_volume_backups except keys with no unique_size_in_gbs are omitted"
  value       = { for k, v in oci_core_volume_backup.core_volume_backups : k => v.unique_size_in_gbs if v.unique_size_in_gbs != null && length(v.unique_size_in_gbs) > 0 }
}
output "core_volume_backups_unique_size_in_mbs" {
  description = "Map of unique_size_in_mbs values across all core_volume_backups, keyed the same as var.core_volume_backups except keys with no unique_size_in_mbs are omitted"
  value       = { for k, v in oci_core_volume_backup.core_volume_backups : k => v.unique_size_in_mbs if v.unique_size_in_mbs != null && length(v.unique_size_in_mbs) > 0 }
}
output "core_volume_backups_volume_group_backup_id" {
  description = "Map of volume_group_backup_id values across all core_volume_backups, keyed the same as var.core_volume_backups except keys with no volume_group_backup_id are omitted"
  value       = { for k, v in oci_core_volume_backup.core_volume_backups : k => v.volume_group_backup_id if v.volume_group_backup_id != null && length(v.volume_group_backup_id) > 0 }
}
output "core_volume_backups_volume_id" {
  description = "Map of volume_id values across all core_volume_backups, keyed the same as var.core_volume_backups except keys with no volume_id are omitted"
  value       = { for k, v in oci_core_volume_backup.core_volume_backups : k => v.volume_id if v.volume_id != null && length(v.volume_id) > 0 }
}

