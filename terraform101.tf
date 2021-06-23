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
  ami           = "ami-07625b74039b1a58b"
  instance_type = "t2.micro"
  key_name      = "devOps-task"
  user_data     = data.template_file.ec2_user_data.template

  tags = {
    Name = "Web_Server_Dev"
  }
}

resource "aws_instance" "web_server2" {
  ami           = "ami-07625b74039b1a58b"
  instance_type = "t2.micro"
  key_name      = "devOps-task"
  user_data     = data.template_file.ec2_user_data.template

  tags = {
    Name = "Web_Server_PreProd"
  }
}

resource "aws_instance" "web_server3" {
  ami           = "ami-07625b74039b1a58b"
  instance_type = "t2.micro"
  key_name      = "devOps-task"
  user_data     = data.template_file.ec2_user_data.template

  tags = {
    Name = "Web_Server_Prod"
  }
}