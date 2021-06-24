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
  ami                    = "ami-07625b74039b1a58b"
  instance_type          = "t2.micro"
  key_name               = "devOps-task"
  user_data              = data.template_file.ec2_user_data.template
  vpc_security_group_ids = [aws_security_group.web_server_sg.id]

  tags = {
    Name = "Web_Server"
  }
}

