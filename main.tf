resource "oci_core_volume_backup" "core_volume_backups" {
  for_each = var.core_volume_backups

  compartment_id                  = each.value.compartment_id
  defined_tags                    = each.value.defined_tags
  display_name                    = each.value.display_name
  freeform_tags                   = each.value.freeform_tags
  is_indefinite_retention_enabled = each.value.is_indefinite_retention_enabled
  is_prevent_deletion_enabled     = each.value.is_prevent_deletion_enabled
  is_retention_lock_enabled       = each.value.is_retention_lock_enabled
  kms_key_id                      = each.value.kms_key_id
  type                            = each.value.type
  volume_id                       = each.value.volume_id

  dynamic "retention_period" {
    for_each = each.value.retention_period != null ? [each.value.retention_period] : []
    content {
      retention_time_amount = retention_period.value.retention_time_amount
      retention_time_unit   = retention_period.value.retention_time_unit
    }
  }

  dynamic "source_details" {
    for_each = each.value.source_details != null ? [each.value.source_details] : []
    content {
      kms_key_id       = source_details.value.kms_key_id
      region           = source_details.value.region
      volume_backup_id = source_details.value.volume_backup_id
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

