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


output "sample" {
  value = var.components
}