output "bucket_domain_name" {
  description = "The Url of the statebucket"
  value       = "${module.statebucket.bucket_domain_name}"
}
