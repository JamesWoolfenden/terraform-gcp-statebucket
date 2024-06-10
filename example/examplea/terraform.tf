terraform {
  required_providers {
    google = {
      version = "5.32.0"
      source  = "hashicorp/google"
    }
    local = {
      source  = "hashicorp/local"
      version = "2.5.1"
    }
  }
  required_version = ">=0.14.8"
}
