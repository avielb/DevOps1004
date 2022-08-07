resource "aws_instance" "example" {
  instance_type = var.instance_type
  ami = "ami-0cff7528ff583bf9a"
  subnet_id = "subnet-018523f5b12a8b3fb"
  tags = {
    Name = var.server_name
  }
}