resource "random_password" "secure_password" {
  length           = 12
  special          = true
  override_special = "!@#$%^&*()-_=+[]{}|;:'\",.<>?/"
}

output "generated_password" {
  value     = random_password.secure_password.result
  sensitive = true
}
