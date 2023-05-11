variable "abc" {
  default = [
    "a",
    "b" ,
    "c"
  ]
}

variable "c" {}
c="length(var.abc)"



resource "aws_instance" "instances" {
  count=var.c
  ami           = data.aws_ami.example.image_id
  instance_type = "t3.micro"

  tags = {
    Name = var.abc[count.index]
  }
}


  data "aws_ami" "example" {

    filter {
      name   = "name"
      values = ["Centos-8-DevOps-Practice"]
    }
  }

