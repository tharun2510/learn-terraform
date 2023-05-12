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

  for_each =var.components
  value = lookup(each.key , "pasword", "null")
  }

