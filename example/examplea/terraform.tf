terraform {
  required_providers {
    local = {
      source  = "hashicorp/local"
      version = "2.8.0"
    }
    google = {
      source  = "hashicorp/google"
      version = "7.30.0"
    }
  }
  required_version = ">=1.5.0"
}
