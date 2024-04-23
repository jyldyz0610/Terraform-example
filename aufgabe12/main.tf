provider "random" {
  # Konfiguriere den Random-Provider
}

# Zufällige RGB-Farbwerte generieren
resource "random_integer" "red" {
  min     = 0
  max     = 255
}

resource "random_integer" "green" {
  min     = 0
  max     = 255
}

resource "random_integer" "blue" {
  min     = 0
  max     = 255
}

# Hexadezimal-Farbwerte zusammensetzen
locals {
  red_hex   = format("%02x", random_integer.red.result)
  green_hex = format("%02x", random_integer.green.result)
  blue_hex  = format("%02x", random_integer.blue.result)
  color_hex = join("", ["#", local.red_hex, local.green_hex, local.blue_hex])
}

# Ausgabe des Farbschemas in einer lokalen Datei
resource "local_file" "color_scheme" {
  filename = "color_scheme.txt"
  content  = local.color_hex
}
