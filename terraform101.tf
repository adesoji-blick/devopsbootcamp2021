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

resource "aws_instance" "tool_server" {
  ami                    = var.instance_ami
  instance_type          = var.instance_type
  key_name               = var.ssh_key
  vpc_security_group_ids = [aws_security_group.tool_server_sg.id]
  count                  = 2

  tags = {
    Name = "${var.tag_name} ${count.index}"
  }
}

