provider "http" {}

resource "null_resource" "fetch_joke" {
  provisioner "local-exec" {
    command = "curl -s -o chuck_norris_joke.json https://api.chucknorris.io/jokes/random"
  }
}
