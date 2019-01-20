output "bucket_domain_name" {
  description = "The Url of the statebucket"
  value       = "${google_storage_bucket.statebucket.url}"
}
