resource "google_storage_bucket" "statebucket" {
  name = "${local.bucket_name}"

  versioning {
    enabled = true
  }
}
