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


output "c" {
  value = lookup(var.fruit , "c", "null")
}




output "sample" {

    value = lookup(var.components.backend , "password", "null")
  }

