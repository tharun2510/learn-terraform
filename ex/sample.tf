data "aws_instance" "foo" {
}

output "workstation_des" {
  value=data.aws_instance.foo
}