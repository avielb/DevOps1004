resource "aws_instance" "example" {
  count = local.create_server_and_moshe ? 1 : 0
  instance_type = var.instance_type
  ami = data.aws_ami.eks_arm64_worker_ami.id
  subnet_id = "subnet-018523f5b12a8b3fb"
  tags = {
    Name = "${local.server_prefix}${format("%02d", count.index + 1)}"
    isEven = count.index % 2 == 1? "yes": "no"
  }
}

data "aws_subnet" my_subnet {
  tags = {
    Tier = "Private"
  }
}
data "aws_ami" "eks_arm64_worker_ami" {
  filter {
    name   = "name"
    values = ["amazon-eks-arm64-node-1.21-v*"]
  }

  most_recent = true

  owners = ["amazon"]
}


