resource "aws_instance" "frontend" {
  ami           = "ami-0bb6af715826253bf"
  instance_type = "t3.micro"

  tags = {
    Name = "frontend"
  }
}




