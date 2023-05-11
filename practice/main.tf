variable "components" {
  default = {
    frontend = {
      name          = "frontend"
      instance_type = "t3.micro"
    }
    mongodb = {
      name          = "mongodb"
      instance_type = "t3.micro"
    }
    catalogue = {
      name          = "catalogue"
      instance_type = "t3.micro"
    }
    redis = {
      name          = "redis"
      instance_type = "t3.micro"
    }
    user = {
      name          = "user"
      instance_type = "t3.micro"
    }
    mysql = {
      name          = "mysql"
      instance_type = "t3.micro"
    }
    cart = {
      name          = "cart"
      instance_type = "t3.micro"
    }
    shipping = {
      name          = "shipping"
      instance_type = "t3.micro"
    }
    rabbitmq = {
      name          = "rabbitmq"
      instance_type = "t3.micro"
    }
    payment = {
      name          = "payment"
      instance_type = "t3.micro"
    }
  }
}



resource "aws_instance" "instances" {
  for_each=var.components
  ami           = data.aws_ami.example.image_id
  instance_type = each.value["instance_type"]
  vpc_security_group_ids= [ data.aws_security_group.sg.id]
  tags = {
    Name = each.key
  }
}

aws_instance.instances["frontend"].public_ip


  data "aws_ami" "example" {

    filter {
      name   = "name"
      values = ["Centos-8-DevOps-Practice"]
    }
  }

data "aws_security_group" "sg" {
  name   = "allow-all"
}


resource "aws_route53_record" "domain_name" {
  for_each = var.components
  zone_id = "Z0542401RTZBLNQX3LCC"
  name    = "${each.value["name"]}-dev.devops2510.online"
  type    = "A"
  ttl     = 30
  records = [aws_instance.instances[each.value["name"]].public_ip]
}
