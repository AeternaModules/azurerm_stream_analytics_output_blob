variable "stream_analytics_output_blobs" {
  description = <<EOT
Map of stream_analytics_output_blobs, attributes below
Required:
    - date_format
    - name
    - path_pattern
    - resource_group_name
    - storage_account_name
    - storage_container_name
    - stream_analytics_job_name
    - time_format
    - serialization (block):
        - encoding (optional)
        - field_delimiter (optional)
        - format (optional)
        - type (required)
Optional:
    - authentication_mode
    - batch_max_wait_time
    - batch_min_rows
    - blob_write_mode
    - storage_account_key
    - storage_account_key_key_vault_id (alternative to storage_account_key - read from Key Vault instead)
    - storage_account_key_key_vault_secret_name (alternative to storage_account_key - read from Key Vault instead)
EOT

  type = map(object({
    date_format                               = string
    name                                      = string
    path_pattern                              = string
    resource_group_name                       = string
    storage_account_name                      = string
    storage_container_name                    = string
    stream_analytics_job_name                 = string
    time_format                               = string
    authentication_mode                       = optional(string)
    batch_max_wait_time                       = optional(string)
    batch_min_rows                            = optional(number)
    blob_write_mode                           = optional(string)
    storage_account_key                       = optional(string)
    storage_account_key_key_vault_id          = optional(string)
    storage_account_key_key_vault_secret_name = optional(string)
    serialization = object({
      encoding        = optional(string)
      field_delimiter = optional(string)
      format          = optional(string)
      type            = string
    })
  }))
  # --- Unconfirmed validation candidates, derived from azurerm_stream_analytics_output_blob's provider source ---
  # Not auto-enabled: either a bespoke provider validator we can't safely translate,
  # or a path that crosses a list-typed block (needs its own for_each wrapping).
  # Review, translate into a real validation{} block above, and delete once confirmed.
  # path: name
  #   condition: length(value) > 0
  #   message:   must not be empty
  # path: stream_analytics_job_name
  #   condition: length(value) > 0
  #   message:   must not be empty
  # path: resource_group_name
  #   condition: length(value) <= 90
  #   message:   [from resourcegroups.ValidateName: invalid when len(value) > 90]
  #   source:    [from resourcegroups.ValidateName: invalid when len(value) > 90]
  # path: resource_group_name
  #   condition: !endswith(value, ".")
  #   message:   [from resourcegroups.ValidateName: must not end with "."]
  #   source:    [from resourcegroups.ValidateName: must not end with "."]
  # path: resource_group_name
  #   condition: length(value) != 0
  #   message:   [from resourcegroups.ValidateName: invalid when len(value) == 0]
  #   source:    [from resourcegroups.ValidateName: invalid when len(value) == 0]
  # path: resource_group_name
  #   source:    [from resourcegroups.ValidateName] !matched
  # path: date_format
  #   condition: length(value) > 0
  #   message:   must not be empty
  # path: storage_account_name
  #   condition: length(value) > 0
  #   message:   must not be empty
  # path: storage_container_name
  #   condition: length(value) > 0
  #   message:   must not be empty
  # path: time_format
  #   condition: length(value) > 0
  #   message:   must not be empty
  # path: serialization.type
  #   source:    validation.StringInSlice value list is not a literal []string - likely a generated PossibleValuesFor*() helper; resolve separately
  # path: serialization.field_delimiter
  #   condition: contains([" ", ",", "\t", "|", ";"], value)
  #   message:   must be one of:  , ,, 	, |, ;
  # path: serialization.encoding
  #   source:    validation.StringInSlice value list is not a literal []string - likely a generated PossibleValuesFor*() helper; resolve separately
  # path: serialization.format
  #   source:    validation.StringInSlice value list is not a literal []string - likely a generated PossibleValuesFor*() helper; resolve separately
  # path: authentication_mode
  #   source:    validation.StringInSlice value list is not a literal []string - likely a generated PossibleValuesFor*() helper; resolve separately
  # path: batch_max_wait_time
  #   source:    [from validate.BatchMaxWaitTime] !ok
  # path: batch_max_wait_time
  #   condition: length(value) > 0
  #   message:   [from validate.BatchMaxWaitTime: invalid when value == ""]
  #   source:    [from validate.BatchMaxWaitTime: invalid when value == ""]
  # path: batch_max_wait_time
  #   source:    [from validate.BatchMaxWaitTime] !matched
  # path: batch_min_rows
  #   condition: value >= 0 && value <= 1000000
  #   message:   must be between 0 and 1000000
  # path: storage_account_key
  #   condition: length(value) > 0
  #   message:   must not be empty
  # path: blob_write_mode
  #   source:    validation.StringInSlice value list is not a literal []string - likely a generated PossibleValuesFor*() helper; resolve separately
}

