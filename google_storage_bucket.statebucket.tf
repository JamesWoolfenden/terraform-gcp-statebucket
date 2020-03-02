resource "google_storage_bucket" "statebucket" {
  name = local.bucket_name

  versioning {
    enabled = true
  }

  encryption {
    default_kms_key_name = ""
  }
}
