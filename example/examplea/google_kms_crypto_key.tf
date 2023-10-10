data "google_kms_key_ring" "keyring" {
  name     = "keyring-example"
  location = "global"
  project  = "pike-gcp"
}

resource "google_kms_crypto_key" "example-pike" {
  name            = "pike"
  key_ring        = data.google_kms_key_ring.keyring.id
  rotation_period = "100000s"

  lifecycle {
    prevent_destroy = true
  }
}
