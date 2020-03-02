provider google {
  version = "3.10.0"
  project = var.project
  region  = var.region
}

provider "template" {
  version = "2.1"
}

provider "local" {
  version = "1.4"
}
