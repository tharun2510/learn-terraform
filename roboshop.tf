resource "aws_instance" "frontend" {
  ami           = "ami-0bb6af715826253bf"
  instance_type = "t3.micro"

  tags = {
    Name = "frontend"

  }
}


output "frontend_pulic_ip" {
  value=aws_instance.frontend.public_ip
}

data "aws_ami" "devops_practice_ami" {
  most_recent = true
  name_regex  = "Centos-8-DevOps-Practice"
  owners      = [973714476881]
}


output  "frontend_ami" {
  value = data.aws_ami.devops_practice_ami.image_id
}