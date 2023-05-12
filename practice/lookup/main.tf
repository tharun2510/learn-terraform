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


resource "null_resource" "null" {
  for_each =var.components

output "sample" {
    value = lookup(each.key, "pasword", "null")
  }

}