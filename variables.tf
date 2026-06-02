locals {
  bucket_name = "terraform-state-${data.google_project.project.number}"
}

variable "location" {
  type        = string
  description = "GCP location for the state bucket (e.g. US, EU, us-central1)."
  validation {
    condition     = length(var.location) > 0
    error_message = "location must not be empty."
  }
}

variable "project_id" {
  type        = string
  description = "GCP project ID that owns the state bucket."
  validation {
    condition     = length(var.project_id) > 0
    error_message = "project_id must not be empty."
  }
}

variable "labels" {
  description = "Labels to apply to all resources created by this module."
  type        = map(string)
  default     = {}
}

variable "kms_key" {
  description = "Full resource ID of the Cloud KMS key to use for bucket encryption (projects/PROJECT/locations/LOCATION/keyRings/RING/cryptoKeys/KEY)."
  type        = string
  validation {
    condition     = can(regex("^projects/.+/locations/.+/keyRings/.+/cryptoKeys/.+$", var.kms_key))
    error_message = "kms_key must be a full Cloud KMS key resource ID."
  }
}
