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
name          = "payme"
instance_type = "t3.micro"
}
}
}


variable a {
  default= {
    count = 1
    bound = 2
  }
}


output "babyyyyyyyyyyyyyy" {
  value = var.components["payment"]
}

output "d" {
  value = var.a["count"]
}