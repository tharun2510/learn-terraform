resource "aws_instance" "frontend" {
  ami           = data.aws_ami.devops_practice_ami.image_id
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


resource "aws_route53_record" "frontend_dns" {
    zone_id = "Z0542401RTZBLNQX3LCC"
    name    = "frontend-dev.devops2510.online"
    type    = "A"
    ttl     = 30
    records = [aws_instance.frontend.public_ip]
  }
