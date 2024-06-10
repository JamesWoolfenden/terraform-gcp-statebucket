resource "google_kms_key_ring" "keyring" {
  name     = "keyring-pike"
  location = "global"
  project  = var.project
}

resource "google_kms_crypto_key" "example-pike" {
  name            = "crypto-key-pike"
  key_ring        = google_kms_key_ring.keyring.id
  rotation_period = "100000s"

  lifecycle {
    prevent_destroy = true
  }
}
