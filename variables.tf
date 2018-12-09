variable "common_tags" {
  description = "This is a map type for applying tags on resources"
  type        = "map"
}

locals{
bucket_name="terraform-state-${data.google_project.project.number}"
}
