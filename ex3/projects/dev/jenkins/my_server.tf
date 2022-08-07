provider "aws" {
  region = "eu-central-1"
  access_key = "1"
}

module "jenkins" {
  source = "../../../modules/my_server"
  server_name = "jenkins"
}

varia