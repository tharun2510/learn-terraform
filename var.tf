variable "sample" {
  default="hello world"
}

output "sample" {
  value=var.sample
}

output "sample1" {
  value="sample1 is = ${var.sample}"
}


variable "sample_boolean"{
  default=true
}

output "boolean" {
  value = var.sample_boolean
}