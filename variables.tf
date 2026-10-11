variable "core_volume_backups" {
  description = <<EOT
Map of core_volume_backups, attributes below
Optional:
    - compartment_id
    - defined_tags
    - display_name
    - freeform_tags
    - is_indefinite_retention_enabled
    - is_prevent_deletion_enabled
    - is_retention_lock_enabled
    - kms_key_id
    - type
    - volume_id
    - retention_period (block):
        - retention_time_amount (required)
        - retention_time_unit (required)
    - source_details (block):
        - kms_key_id (optional)
        - region (required)
        - volume_backup_id (required)
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - update (optional)
EOT

  type = map(object({
    compartment_id                  = optional(string)
    defined_tags                    = optional(map(string))
    display_name                    = optional(string)
    freeform_tags                   = optional(map(string))
    is_indefinite_retention_enabled = optional(bool)
    is_prevent_deletion_enabled     = optional(bool)
    is_retention_lock_enabled       = optional(bool)
    kms_key_id                      = optional(string)
    type                            = optional(string)
    volume_id                       = optional(string)
    retention_period = optional(object({
      retention_time_amount = number
      retention_time_unit   = string
    }))
    source_details = optional(object({
      kms_key_id       = optional(string)
      region           = string
      volume_backup_id = string
    }))
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      update = optional(string)
    }))
  }))
}

