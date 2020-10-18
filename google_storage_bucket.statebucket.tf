resource "google_storage_bucket" "statebucket" {
  name = local.bucket_name

  versioning {
    enabled = true
  }

  encryption {
    default_kms_key_name = var.kms_key
  }


  bucket_policy_only = true

}


variable "kms_key" {
  description = "Which key to encrypt with"
  type        = string

  default = ""
}
