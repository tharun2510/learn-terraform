
resource "aws_instance" "instances" {
  for_each = var.components
  ami           = data.aws_ami.ami.image_id
  instance_type =each.value["instance_type"]
  vpc_security_group_ids  = [ data.aws_security_group.sg.id ]
  tags = {
    Name = each.value["name"]
  }
}





resource "aws_route53_record" "domain_name" {
  for_each = var.components
  zone_id = "Z0542401RTZBLNQX3LCC"
  name    = "${each.value["name"]}-dev.devops2510.online"
  type    = "A"
  ttl     = 30
  records = [aws_instance.instances["${each.key}"].private_ip]
}


resource "null_resource" "null" {

  depends_on = [aws_instance.instances , aws_route53_record.domain_name ]
  for_each=var.components


  provisioner "remote-exec" {

    connection {
      type     = "ssh"
      user     = "centos"
      password = "DevOps321"
      host     = aws_instance.instances["${each.key}"].private_ip
    }

    inline = [
      "rm -rf roboshop-shell",
      "git clone https://github.com/tharun2510/roboshop-shell.git",
      "cd roboshop-shell",
      "sudo bash  ${each.key}.sh  ${lookup(each.value,"password","null" )}"
    ]
  }
}


