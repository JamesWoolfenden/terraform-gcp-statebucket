module "statebucket" {
  source = "../../"

  #source  = "JamesWoolfenden/statebucket/gcs"
  #version = "0.0.1"
  common_tags = "${var.common_tags}"
}
