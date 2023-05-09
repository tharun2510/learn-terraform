output "sample" {
  value=var.sample
}

output "sample1" {
  value="sample1 is = ${var.sample}"
}


output "boolean" {
  value = var.sample_boolean
}

output "sample_list" {
  value=var.sample_list
}

output "sample_list1" {
  value =var.sample_list[2]
}

output num1 {
  value = var.num
}


output sample_dict {
  value = var.sample_dict["b"]
}