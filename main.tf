terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.27"
    }
  }
  required_version = ">= 0.14.9"
}

resource "aws_instance" "wk3project" {
  ami           = data.aws_ami.packer-ami.id
  instance_type = var.instance_type
  key_name      = var.ssh_key
  user_data     = data.template_file.ansible_installation.template
  # count                  = var.instance_count
  # subnet_id              = aws_subnet.training_subnet[count.index].id
  # vpc_security_group_ids = [aws_security_group.server_sg[count.index].id]

  tags = {
    Name        = "${var.tag_name_1}"
    environment = "${var.environment}"
    role        = "${var.role}"
  }
}

module "web-server" {
  source         = "./modules"
  instance_count = var.instance_count
  ami_id         = data.aws_ami.packer-ami.id
  key            = var.ssh_key
  instance_type  = var.instance_type
  name           = var.tag_name
  role           = var.environment
  environment    = var.role
}

