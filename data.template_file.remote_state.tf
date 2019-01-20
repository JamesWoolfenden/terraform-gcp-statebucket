data "template_file" "remote_state" {
  template = "${file("${path.module}/remote_state.tf.template")}"

  vars {
    bucket_name = "${var.bucket_name}"
  }
}
