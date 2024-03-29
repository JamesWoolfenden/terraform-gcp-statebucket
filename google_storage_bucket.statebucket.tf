resource "google_storage_bucket" "statebucket" {
  #checkov:skip=CKV_GCP_62:
  name     = local.bucket_name
  location = var.location

  versioning {
    enabled = true
  }

  encryption {
    default_kms_key_name = var.kms_key
  }

  uniform_bucket_level_access = true
  public_access_prevention    = "enforced"
}


variable "kms_key" {
  description = "Which key to encrypt with"
  type        = string
}
