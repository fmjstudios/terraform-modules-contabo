
output "data_center" {
  value       = contabo_object_storage.delta4x4_storage.data_center
  description = "The data center the new storage space was created in"
}

output "s3_url" {
  value       = contabo_object_storage.delta4x4_storage.s3_url
  description = "The S3 URL for public retrieval of objects"
}

output "status" {
  value       = contabo_object_storage.delta4x4_storage.status
  description = "The current status of the storage space backing the S3 bucket"
}

output "public_sharing_link" {
  value       = contabo_object_storage_bucket.delta4x4_bucket.public_sharing_link
  description = "The public link for S3 objects"
}
