provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "example" {
  instance_type = "t2.micro"
  ami = "ami-0cff7528ff583bf9a"
  subnet_id = "subnet-018523f5b12a8b3fb"
  tags = {
    Name = var.server_name
  }
}

variable "server_name" {
#  default = "moshe"
  description = "name for the server"
}

output "server_ip" {
  value = aws_instance.example.private_ip
}