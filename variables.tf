variable "common_tags" {
  description = "This is a map type for applying tags on resources"
  type        = map(any)
}

locals {
  bucket_name = "terraform-state-${var.project_id}"
}

variable "location" {
  type = string
}

variable "project_id" {
  type = string
}
