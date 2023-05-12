variable "components" {
  default = {
    frontend = {
      name="frontend"
      count=1
      password="hi"
    }
    backend = {
      name="backend"
      count=2
    }
}
}

variable "fruit" {
  default={
    a=10
    b=20
  }
}


resource "null_resource" "null" {
  for_each =var.components
  provisioner "local-exec" {
    commands="echo  tarun is good ${each.key} "
  }
}
