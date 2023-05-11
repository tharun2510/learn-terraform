data "aws_security_group" "sg" {
  name   = "allow-all"
}


output "id" {
  value=data.aws_security_group.sg

}