
data "aws_ami" "example" {

  filter {
    name   = "name"
    values = ["Centos-8-DevOps-Practice"]
  }
}

