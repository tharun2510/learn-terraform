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


variable "sample_list" {
  default=[
    100,
    true,
    200,
    "hello world",
  ]
}

output "sample_list" {
  value=var.sample_list
}

output "sample_list1" {
  value =var.sample_list[2]
}

variable num {
  default="hello"
}

output num1 {
  value = var.num
}

variable sample_dict {
  default={
    a=1000
    b="dict"
  }
}

output sample_dict {
  value = var.sample_dict["a"]
}