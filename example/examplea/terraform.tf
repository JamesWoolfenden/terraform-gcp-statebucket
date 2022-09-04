terraform {
  required_providers {
    google = {
      version = "4.34.0"
      source  = "hashicorp/google"
    }
    template = {
      source = "hashicorp/template"
    version = "2.2.0" }

    local = {
      source  = "hashicorp/local"
      version = "2.0.0"
    }
  }
  required_version = ">=0.14.8"
}
