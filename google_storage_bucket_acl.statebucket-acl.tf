resource "google_storage_bucket_acl" "statebucket_acl" {
  bucket = "${google_storage_bucket.statebucket.name}"

  predefined_acl = "private"
}
