resource "google_kms_key_ring" "keyring" {
  name     = "keyring-example"
  location = "global"
  project  = "pike-477416"
}

resource "google_kms_crypto_key" "example-pike" {
  name            = "pike"
  key_ring        = google_kms_key_ring.keyring.id
  rotation_period = "7776000s"

  lifecycle {
    prevent_destroy = true
  }
}
