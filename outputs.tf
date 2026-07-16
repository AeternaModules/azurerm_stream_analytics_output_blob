output "stream_analytics_output_blobs_id" {
  description = "Map of id values across all stream_analytics_output_blobs, keyed the same as var.stream_analytics_output_blobs"
  value       = { for k, v in azurerm_stream_analytics_output_blob.stream_analytics_output_blobs : k => v.id if v.id != null && length(v.id) > 0 }
}
output "stream_analytics_output_blobs_authentication_mode" {
  description = "Map of authentication_mode values across all stream_analytics_output_blobs, keyed the same as var.stream_analytics_output_blobs"
  value       = { for k, v in azurerm_stream_analytics_output_blob.stream_analytics_output_blobs : k => v.authentication_mode if v.authentication_mode != null && length(v.authentication_mode) > 0 }
}
output "stream_analytics_output_blobs_batch_max_wait_time" {
  description = "Map of batch_max_wait_time values across all stream_analytics_output_blobs, keyed the same as var.stream_analytics_output_blobs"
  value       = { for k, v in azurerm_stream_analytics_output_blob.stream_analytics_output_blobs : k => v.batch_max_wait_time if v.batch_max_wait_time != null && length(v.batch_max_wait_time) > 0 }
}
output "stream_analytics_output_blobs_batch_min_rows" {
  description = "Map of batch_min_rows values across all stream_analytics_output_blobs, keyed the same as var.stream_analytics_output_blobs"
  value       = { for k, v in azurerm_stream_analytics_output_blob.stream_analytics_output_blobs : k => v.batch_min_rows if v.batch_min_rows != null }
}
output "stream_analytics_output_blobs_blob_write_mode" {
  description = "Map of blob_write_mode values across all stream_analytics_output_blobs, keyed the same as var.stream_analytics_output_blobs"
  value       = { for k, v in azurerm_stream_analytics_output_blob.stream_analytics_output_blobs : k => v.blob_write_mode if v.blob_write_mode != null && length(v.blob_write_mode) > 0 }
}
output "stream_analytics_output_blobs_date_format" {
  description = "Map of date_format values across all stream_analytics_output_blobs, keyed the same as var.stream_analytics_output_blobs"
  value       = { for k, v in azurerm_stream_analytics_output_blob.stream_analytics_output_blobs : k => v.date_format if v.date_format != null && length(v.date_format) > 0 }
}
output "stream_analytics_output_blobs_name" {
  description = "Map of name values across all stream_analytics_output_blobs, keyed the same as var.stream_analytics_output_blobs"
  value       = { for k, v in azurerm_stream_analytics_output_blob.stream_analytics_output_blobs : k => v.name if v.name != null && length(v.name) > 0 }
}
output "stream_analytics_output_blobs_path_pattern" {
  description = "Map of path_pattern values across all stream_analytics_output_blobs, keyed the same as var.stream_analytics_output_blobs"
  value       = { for k, v in azurerm_stream_analytics_output_blob.stream_analytics_output_blobs : k => v.path_pattern if v.path_pattern != null && length(v.path_pattern) > 0 }
}
output "stream_analytics_output_blobs_resource_group_name" {
  description = "Map of resource_group_name values across all stream_analytics_output_blobs, keyed the same as var.stream_analytics_output_blobs"
  value       = { for k, v in azurerm_stream_analytics_output_blob.stream_analytics_output_blobs : k => v.resource_group_name if v.resource_group_name != null && length(v.resource_group_name) > 0 }
}
output "stream_analytics_output_blobs_serialization" {
  description = "Map of serialization values across all stream_analytics_output_blobs, keyed the same as var.stream_analytics_output_blobs"
  value       = { for k, v in azurerm_stream_analytics_output_blob.stream_analytics_output_blobs : k => v.serialization if v.serialization != null && length(v.serialization) > 0 }
}
output "stream_analytics_output_blobs_storage_account_key" {
  description = "Map of storage_account_key values across all stream_analytics_output_blobs, keyed the same as var.stream_analytics_output_blobs"
  value       = { for k, v in azurerm_stream_analytics_output_blob.stream_analytics_output_blobs : k => v.storage_account_key if v.storage_account_key != null && length(v.storage_account_key) > 0 }
  sensitive   = true
}
output "stream_analytics_output_blobs_storage_account_name" {
  description = "Map of storage_account_name values across all stream_analytics_output_blobs, keyed the same as var.stream_analytics_output_blobs"
  value       = { for k, v in azurerm_stream_analytics_output_blob.stream_analytics_output_blobs : k => v.storage_account_name if v.storage_account_name != null && length(v.storage_account_name) > 0 }
}
output "stream_analytics_output_blobs_storage_container_name" {
  description = "Map of storage_container_name values across all stream_analytics_output_blobs, keyed the same as var.stream_analytics_output_blobs"
  value       = { for k, v in azurerm_stream_analytics_output_blob.stream_analytics_output_blobs : k => v.storage_container_name if v.storage_container_name != null && length(v.storage_container_name) > 0 }
}
output "stream_analytics_output_blobs_stream_analytics_job_name" {
  description = "Map of stream_analytics_job_name values across all stream_analytics_output_blobs, keyed the same as var.stream_analytics_output_blobs"
  value       = { for k, v in azurerm_stream_analytics_output_blob.stream_analytics_output_blobs : k => v.stream_analytics_job_name if v.stream_analytics_job_name != null && length(v.stream_analytics_job_name) > 0 }
}
output "stream_analytics_output_blobs_time_format" {
  description = "Map of time_format values across all stream_analytics_output_blobs, keyed the same as var.stream_analytics_output_blobs"
  value       = { for k, v in azurerm_stream_analytics_output_blob.stream_analytics_output_blobs : k => v.time_format if v.time_format != null && length(v.time_format) > 0 }
}

