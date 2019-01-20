resource "google_storage_bucket" "statebucket" {
  name = "${var.bucket_name}"

  versioning {
    enabled = true
  }
}
