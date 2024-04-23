resource "null_resource" "random_number" {
  triggers = {
    always_run = "${timestamp()}"
  }

  provisioner "local-exec" {
    command = "echo Zufällige Zahl: $(( (RANDOM % 100) + 1 ))"
  }
}
