provider "google" {
  project     = "focused-elysium-224508"
  region      = "europe-west1"
  version     = "~> 1.19"
}

provider "local" {
  version = "1.1"
}

provider "template" {
  version = "1.0"
}
