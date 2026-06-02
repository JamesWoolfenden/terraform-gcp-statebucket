output "bucket_domain_name" {
  description = "The Url of the statebucket"
  value       = module.statebucket.bucket_domain_name
}

output "key" {
  value       = google_kms_crypto_key.example_pike
  description = "The KMS key used to encrypt the statebucket"
}
