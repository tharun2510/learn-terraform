data "aws_instance" "foo" {
  name="workstation"
}

output "workstation_des" {
  value=data.aws_instance.foo
}