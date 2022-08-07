variable "server_name" {
#  default = "moshe"
  description = "name for the server"
}

variable "instance_type" {
  default = "t2.micro"
}

variable "create_server" {
  default = false
}

locals {
  server_prefix = "aviel-${var.server_name}"
  create_server_and_moshe = var.create_server == true && var.server_name == "moshe"
}