variable "common_tags" {
  description = "This is a map type for applying tags on resources"
  type        = map(any)
}

locals {
  bucket_name = "terraform-state-${data.google_project.project.number}"
}

variable "location" {
  type = string
}

variable "project_id" {
  type = string
}
