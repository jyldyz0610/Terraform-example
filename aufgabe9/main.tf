provider "null" {
  # Der NULL Provider wird verwendet, um lokale Ressourcen zu verwalten
}

resource "null_resource" "local_script_execution" {
  # Dies ist eine leere Ressource, die als Auslöser für das lokale Skript dient
  triggers = {
    # Verwenden Sie beispielsweise eine Variable oder eine Eingabe, um das Skript auszuführen, wenn sich dieser Wert ändert
    always_run = "${timestamp()}"
  }

  provisioner "local-exec" {
    # Der local-exec Provisioner führt Befehle auf dem lokalen Rechner aus
    command = "bash ./script.sh"
  }
}
