# holden:ignore:HLD_TF_026 — examples intentionally use ../../ to reference the local module root
module "statebucket" {
  source     = "../../"
  location   = var.region
  project_id = "pike-477416"
  kms_key    = google_kms_crypto_key.example_pike.id
  log_bucket = google_storage_bucket.logs.name
}

# holden:ignore:HLD_GCP_003
# holden:ignore:HLD_GCP_339: accepted risk, example log bucket
# holden:ignore:HLD_GCP_385: accepted risk, example log bucket
resource "google_storage_bucket" "logs" {
  #checkov:skip=CKV_GCP_62: this is the log-destination bucket; self-logging not required
  name                        = "terraform-state-logs-pike-477416"
  location                    = var.region
  uniform_bucket_level_access = true
  public_access_prevention    = "enforced"

  versioning {
    enabled = true
  }

  # Use a customer-managed KMS key for bucket encryption
  encryption {
    default_kms_key_name = google_kms_crypto_key.example_pike.id
  }

}

# holden:ignore:HLD_GCP_003
# holden:ignore:HLD_GCP_339: accepted risk, example log bucket
# holden:ignore:HLD_GCP_385: accepted risk, example log bucket
resource "google_storage_bucket" "logs_access" {
  #checkov:skip=CKV_GCP_62: log-destination bucket for itself would create a logging cycle; self-logging not required
  # Dedicated bucket to receive access logs for the main logs bucket
  name                        = "terraform-state-logs-access-pike-477416"
  location                    = var.region
  uniform_bucket_level_access = true
  public_access_prevention    = "enforced"

  versioning {
    enabled = true
  }

  encryption {
    default_kms_key_name = google_kms_crypto_key.example_pike.id
  }

}
