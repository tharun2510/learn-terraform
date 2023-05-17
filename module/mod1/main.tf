resource  "null_resource" "null" {
  provisioner "local-exec" {
    command = "echo mod1 input - ${var.input}"
  }
}


variable "input" {}