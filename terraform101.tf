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

resource "aws_instance" "web_server" {
  ami                    = var.ami
  instance_type          = var.instance_type
  key_name               = var.ssh_key
  user_data              = data.template_file.ec2_user_data.template
  vpc_security_group_ids = [aws_security_group.web_server_sg.id]

  tags = {
    Name = var.tag_name
  }
}

