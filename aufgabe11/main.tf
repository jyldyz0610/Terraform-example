provider "random" {
  # Konfiguriere den Random-Provider
}

# Zufällige Anzahl von Subnetzen zwischen 1 und 5 generieren
resource "random_integer" "subnet_count" {
  min     = 1
  max     = 5
}

# Subnetze erstellen
resource "local_file" "subnet_file" {
  filename = "subnets.txt"
  content  = join("\n", [
    for i in range(random_integer.subnet_count.result) : 
    "Subnet ${i+1}"
  ])
}


