provider "google" {
  project = var.project
  region  = var.region
}

provider "template" {
}

provider "local" {
}
