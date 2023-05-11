variable "abc" {
  default={
    a=frontend
    b=backend
    c=middleware
  }
}

resource "aws_instance" "instances" {
  count=length(var.abc)
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

