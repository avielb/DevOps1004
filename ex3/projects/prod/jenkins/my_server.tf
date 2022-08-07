provider "aws" {
  region = "us-east-1"
}

module "jenkins" {
  source = "../../../modules/my_server"
  server_name = "jenkins"
}


