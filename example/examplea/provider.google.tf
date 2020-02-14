provider google {
  version = "3.8.0"
  project = var.project
  region  = var.region
}

provider "template" {
  version = "2.1"
}
