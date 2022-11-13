#resource "aws_instance" "sample" {
#  for_each      = var.instances
#  ami           = "ami-00d48a21603b2119b"
#  instance_type = element(var.instances, count.index)
#  tags = {
#    Name = elemet(var.instances, count.index)
#  }
#}


variable "instances" {
  default = {
    catalogue = {
      instance_type = "t3.micro"
      tagName       = "frontend"
    }
    cart = {
      instance_type = "t3.micro"
      tagName       = "backend"
    }

  }
}

output "count" {
  value = length(var.instances, 0)
}
