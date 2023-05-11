variable "components" {
  default = {
    frontend = {
      name = "frontend"
    }
    backend = {
      name = "backend"
    }
    middleware = {
      name = "middleware"
    }
  }
}



resource "aws_instance" "instances" {
  for_each=var.components
  ami           = data.aws_ami.example.image_id
  instance_type = "t3.micro"

  tags = {
    Name = each.key
  }
}


  data "aws_ami" "example" {

    filter {
      name   = "name"
      values = ["Centos-8-DevOps-Practice"]
    }
  }

