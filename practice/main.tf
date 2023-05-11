
data "aws_security_groups" "test"{}


output "id" {
  value=data.aws_security_groups.test.id

}