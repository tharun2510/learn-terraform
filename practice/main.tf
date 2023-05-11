
data "aws_ami" "example" {

  filter {
    name   = "name"
    values = ["Centos*"]
  }
}

