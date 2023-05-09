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


