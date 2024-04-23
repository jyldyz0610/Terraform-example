provider "tls" {}

resource "tls_private_key" "example_com_key" {
  algorithm = "RSA"
  rsa_bits  = 2048
}

resource "tls_self_signed_cert" "example_com_cert" {
  private_key_pem = tls_private_key.example_com_key.private_key_pem

  subject {
    common_name = "example.com"
  }

  validity_period_hours = 8760 // Gültigkeit für ein Jahr

  allowed_uses = [
    "key_encipherment",
    "digital_signature",
    "server_auth",
  ]
}

