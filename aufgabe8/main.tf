variable "create_file" {
  type    = bool
  default = true
}

resource "null_resource" "create_file" {
  count = var.create_file ? 1 : 0

  provisioner "local-exec" {
    command = "echo 'This file was created conditionally' > conditional_file.txt"
  }
}
