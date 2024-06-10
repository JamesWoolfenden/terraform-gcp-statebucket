resource "local_file" "remote_state" {
  content  = templatefile( "${path.module}/remote_state.tf.template", { bucket_name = local.bucket_name })
  filename = "remote_state.tf"
}
