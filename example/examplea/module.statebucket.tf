module "statebucket" {
  source      = "../../"
  location    = var.region
  project_id  = "pike-477416"
  common_tags = var.common_tags
  kms_key     = google_kms_crypto_key.example-pike.name
}
