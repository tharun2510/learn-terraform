data "aws_ami" "example" {
  most_recent      = true
  name_regex       = "Centos-7-DevOps-Practice"
  owners           = 111545089137
}


output  "data" {
  value = data.aws_ami.example.id
}