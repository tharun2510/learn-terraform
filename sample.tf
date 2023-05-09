data "aws_instances" "foo" {
}

output "workstation_des" {
  value=data.aws_instances.foo
}