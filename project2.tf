terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.27"
    }
  }
  required_version = ">= 0.14.9"
}

provider "aws" {
  profile = "default"
  region  = "ca-central-1"
}

resource "aws_instance" "tool_server1" {
  ami                    = var.ami
  instance_type          = var.instance_type
  key_name               = var.ssh_key
  subnet_id              = aws_subnet.subnet_1.id
  vpc_security_group_ids = [aws_security_group.tool_server_sg.id]
  user_data              = data.template_file.ec2_user_data.template

  tags = {
    Name        = var.tags_name1
    Environment = var.tags_environment
    Role        = "developer1"
  }
}

resource "aws_instance" "tool_server2" {
  ami                    = var.ami
  instance_type          = var.instance_type
  key_name               = var.ssh_key
  subnet_id              = aws_subnet.subnet_1.id
  vpc_security_group_ids = [aws_security_group.tool_server_sg.id]
  user_data              = data.template_file.ec2_user_data_2.template

  tags = {
    Name        = var.tags_name2
    Environment = var.tags_environment
    Role        = "developer2"
  }
}

resource "aws_instance" "build_server" {
  ami                    = var.ubuntu_ami
  instance_type          = var.instance_type
  key_name               = var.ssh_key
  subnet_id              = aws_subnet.subnet_2.id
  vpc_security_group_ids = [aws_security_group.build_server_sg.id]

  tags = {
    Name        = var.tags_name3
    Environment = var.tags_environment
    Role        = "Provisioner"
  }
}