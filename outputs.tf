output "stream_analytics_output_blobs" {
  description = "All stream_analytics_output_blob resources"
  value       = azurerm_stream_analytics_output_blob.stream_analytics_output_blobs
  sensitive   = true
}
output "stream_analytics_output_blobs_authentication_mode" {
  description = "List of authentication_mode values across all stream_analytics_output_blobs"
  value       = [for k, v in azurerm_stream_analytics_output_blob.stream_analytics_output_blobs : v.authentication_mode]
}
output "stream_analytics_output_blobs_batch_max_wait_time" {
  description = "List of batch_max_wait_time values across all stream_analytics_output_blobs"
  value       = [for k, v in azurerm_stream_analytics_output_blob.stream_analytics_output_blobs : v.batch_max_wait_time]
}
output "stream_analytics_output_blobs_batch_min_rows" {
  description = "List of batch_min_rows values across all stream_analytics_output_blobs"
  value       = [for k, v in azurerm_stream_analytics_output_blob.stream_analytics_output_blobs : v.batch_min_rows]
}
output "stream_analytics_output_blobs_blob_write_mode" {
  description = "List of blob_write_mode values across all stream_analytics_output_blobs"
  value       = [for k, v in azurerm_stream_analytics_output_blob.stream_analytics_output_blobs : v.blob_write_mode]
}
output "stream_analytics_output_blobs_date_format" {
  description = "List of date_format values across all stream_analytics_output_blobs"
  value       = [for k, v in azurerm_stream_analytics_output_blob.stream_analytics_output_blobs : v.date_format]
}
output "stream_analytics_output_blobs_name" {
  description = "List of name values across all stream_analytics_output_blobs"
  value       = [for k, v in azurerm_stream_analytics_output_blob.stream_analytics_output_blobs : v.name]
}
output "stream_analytics_output_blobs_path_pattern" {
  description = "List of path_pattern values across all stream_analytics_output_blobs"
  value       = [for k, v in azurerm_stream_analytics_output_blob.stream_analytics_output_blobs : v.path_pattern]
}
output "stream_analytics_output_blobs_resource_group_name" {
  description = "List of resource_group_name values across all stream_analytics_output_blobs"
  value       = [for k, v in azurerm_stream_analytics_output_blob.stream_analytics_output_blobs : v.resource_group_name]
}
output "stream_analytics_output_blobs_serialization" {
  description = "List of serialization values across all stream_analytics_output_blobs"
  value       = [for k, v in azurerm_stream_analytics_output_blob.stream_analytics_output_blobs : v.serialization]
}
output "stream_analytics_output_blobs_storage_account_key" {
  description = "List of storage_account_key values across all stream_analytics_output_blobs"
  value       = [for k, v in azurerm_stream_analytics_output_blob.stream_analytics_output_blobs : v.storage_account_key]
  sensitive   = true
}
output "stream_analytics_output_blobs_storage_account_name" {
  description = "List of storage_account_name values across all stream_analytics_output_blobs"
  value       = [for k, v in azurerm_stream_analytics_output_blob.stream_analytics_output_blobs : v.storage_account_name]
}
output "stream_analytics_output_blobs_storage_container_name" {
  description = "List of storage_container_name values across all stream_analytics_output_blobs"
  value       = [for k, v in azurerm_stream_analytics_output_blob.stream_analytics_output_blobs : v.storage_container_name]
}
output "stream_analytics_output_blobs_stream_analytics_job_name" {
  description = "List of stream_analytics_job_name values across all stream_analytics_output_blobs"
  value       = [for k, v in azurerm_stream_analytics_output_blob.stream_analytics_output_blobs : v.stream_analytics_job_name]
}
output "stream_analytics_output_blobs_time_format" {
  description = "List of time_format values across all stream_analytics_output_blobs"
  value       = [for k, v in azurerm_stream_analytics_output_blob.stream_analytics_output_blobs : v.time_format]
}

