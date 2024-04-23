provider "template" {}

data "template_file" "config_template" {
  template = file("config_template.json.tpl")

  vars = {
    user     = "your_username"
    password = "your_password"
  }
}

resource "local_file" "config_file" {
  content  = data.template_file.config_template.rendered
  filename = "config.json"
}
