variable "region" {
  type        = string
  description = "GCP region for the state bucket (e.g. us-central1)."
  validation {
    condition     = length(var.region) > 0
    error_message = "region must not be empty."
  }
}
