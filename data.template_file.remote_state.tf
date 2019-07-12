data "template_file" "remote_state" {
  template = "${file("${path.module}/remote_state.tf.template")}"

  vars = {
    bucket_name = local.bucket_name
  }
}
