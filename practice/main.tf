
data "aws_ami" "example" {

  filter {
    name   = "name"
    values = ["Centos-8-DevOps-Practice"]
  }
}

output "id" {
  value=data.aws_ami.example.arn

}