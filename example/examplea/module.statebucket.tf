# holden:ignore:HLD_TF_026 — examples intentionally use ../../ to reference the local module root
module "statebucket" {
  source     = "../../"
  location   = var.region
  project_id = "pike-477416"
  kms_key    = google_kms_crypto_key.example_pike.id
  log_bucket = google_storage_bucket.logs.name
}

resource "google_storage_bucket" "logs" {
  #checkov:skip=CKV_GCP_62: this is the log-destination bucket; self-logging not required
  name                        = "terraform-state-logs-pike-477416"
  location                    = var.region
  uniform_bucket_level_access = true
  public_access_prevention    = "enforced"

  versioning {
    enabled = true
  }
}
