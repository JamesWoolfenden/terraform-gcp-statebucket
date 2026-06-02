resource "google_storage_bucket" "statebucket" {
  name     = local.bucket_name
  location = var.location
  labels   = var.labels

  versioning {
    enabled = true
  }

  encryption {
    default_kms_key_name = var.kms_key
  }

  dynamic "logging" {
    for_each = var.log_bucket != null ? [1] : []
    content {
      log_bucket        = var.log_bucket
      log_object_prefix = "state-access/"
    }
  }

  uniform_bucket_level_access = true
  public_access_prevention    = "enforced"

  lifecycle {
    prevent_destroy = true
  }
}
