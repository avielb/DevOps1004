provider "aws" {
  region = "eu-central-1"
}

module "jenkins" {
  source = "../../../modules/my_server"
  server_name = var.server_name
}
data "aws_ami" "eks_arm64_worker_ami" {
  filter {
    name   = "name"
    values = ["amazon-eks-arm64-node-1.21-v*"]
  }

  most_recent = true

  owners = ["amazon"]
}
output "ami_id" {
  value = data.aws_ami.eks_arm64_worker_ami.id
}

variable "server_name" {
  default = "jenkins"
}

