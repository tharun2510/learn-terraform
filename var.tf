variable "sample" {
  default="hello world"
}


variable "sample_boolean"{
  default=true
}



variable "sample_list" {
  default=[
    100,
    true,
    200,
    "hello world",
  ]
}



variable num {
  default="hello"
}


variable sample_dict {
  default={
    a=1000
    b="dict"
  }
}

variable "env" { }

variable "auto"  {  }
variable "ter"  {  }

