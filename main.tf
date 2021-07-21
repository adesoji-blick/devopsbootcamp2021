terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.27"
    }
  }
  required_version = ">= 0.14.9"
}

module "ec2-module" {
  source         = "./modules"
  instance_count = 2
  ami_id         = "ami-07625b74039b1a58b"
  key            = "devOps-task"
  instance_type  = "t2.micro"
  name           = "ec2-by-module"
  httpport       = "80"
 }


