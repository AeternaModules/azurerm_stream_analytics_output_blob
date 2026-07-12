data "azurerm_key_vault_secret" "storage_account_key" {
  for_each     = { for k, v in var.stream_analytics_output_blobs : k => v if v.storage_account_key_key_vault_id != null && v.storage_account_key_key_vault_secret_name != null }
  name         = each.value.storage_account_key_key_vault_secret_name
  key_vault_id = each.value.storage_account_key_key_vault_id
}
resource "azurerm_stream_analytics_output_blob" "stream_analytics_output_blobs" {
  for_each = var.stream_analytics_output_blobs

  date_format               = each.value.date_format
  name                      = each.value.name
  path_pattern              = each.value.path_pattern
  resource_group_name       = each.value.resource_group_name
  storage_account_name      = each.value.storage_account_name
  storage_container_name    = each.value.storage_container_name
  stream_analytics_job_name = each.value.stream_analytics_job_name
  time_format               = each.value.time_format
  authentication_mode       = each.value.authentication_mode
  batch_max_wait_time       = each.value.batch_max_wait_time
  batch_min_rows            = each.value.batch_min_rows
  blob_write_mode           = each.value.blob_write_mode
  storage_account_key       = each.value.storage_account_key != null ? each.value.storage_account_key : try(data.azurerm_key_vault_secret.storage_account_key[each.key].value, null)

  serialization {
    encoding        = each.value.serialization.encoding
    field_delimiter = each.value.serialization.field_delimiter
    format          = each.value.serialization.format
    type            = each.value.serialization.type
  }
}

