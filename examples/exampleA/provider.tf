provider "google" {
  project = "terraform-state-224320"
  region  = "us-central1"
  version = "1.19.1"
}

provider "local" {
  version = "1.1"
}

provider "template" {
  version = "1.0"
}
