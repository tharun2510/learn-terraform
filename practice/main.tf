resource "aws_instance" "frontend" {
  ami           = data.aws_ami.example.image_id
  instance_type = "t3.micro"

  tags = {
    Name = "frontend"
  }
}


  data "aws_ami" "example" {

    filter {
      name   = "name"
      values = ["Centos-8-DevOps-Practice"]
    }
  }

