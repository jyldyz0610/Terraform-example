provider "local" {}
resource "local_file" "hello" {
    content = "Hello, Terraform!"
    filename = "${path.module}/test/hello.txt" 
}