data "aws_ami" "ubuntu" {
  most_recent = true

  filter {
    name   = "name"
    values = ["ubuntu/images/hvm-ssd/ubuntu-focal-20.04-amd64-server-*"]
  }
  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }

  owners = ["099720109477"] # Canonical
}

resource "aws_instance" "bastion" {
  ami           = data.aws_ami.ubuntu.id
  instance_type = "t2.micro"
  subnet_id = module.network.public_subnet_id_1
  security_groups = [module.network.bastion_id]
  provisioner "local-exec" {
    command = "echo ${self.public_ip}"
  }

}
resource "aws_instance" "application" {
  ami           = data.aws_ami.ubuntu.id
  instance_type = "t2.micro"
  subnet_id = module.network.public_subnet_id_2
  security_groups = [module.network.application_id]
}