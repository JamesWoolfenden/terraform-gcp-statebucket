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

resource "google_kms_crypto_key_iam_member" "storage" {
  crypto_key_id = google_kms_crypto_key.example-pike.id
  role          = "roles/cloudkms.cryptoKeyEncrypterDecrypter"
  member        = "serviceAccount:service-${data.google_project.project.number}@gs-project-accounts.iam.gserviceaccount.com"
}

data "google_project" "project" {
}

