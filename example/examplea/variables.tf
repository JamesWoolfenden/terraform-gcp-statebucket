variable "common_tags" {
  description = "This is a map type for applying tags on resources"
  type        = map(any)
}

variable "region" {
  type = string
}

variable "project" {
  type        = string
  description = "(optional) describe your variable"
}
