module "statebucket" {
  source      = "../../"
  location    = var.region
  project_id  = "pike-361314"
  common_tags = var.common_tags
}
