resource "random_string" "filename_suffix" {
  length  = 10
  special = false
}

resource "null_resource" "create_file" {
  triggers = {
    suffix = "${random_string.filename_suffix.result}"
  }

  provisioner "local-exec" {
    command = "touch file_${random_string.filename_suffix.result}.txt"
  }
}
