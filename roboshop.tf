data "aws_ami" "example" {
  most_recent      = true
  name_regex       = "Centos-8-DevOps-Practice"
  owners           = [111545089137]
}


output  "data1" {
  value = data.aws_ami.example.image_id
}