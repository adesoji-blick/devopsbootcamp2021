terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.27"
    }
  }
  required_version = ">= 0.14.9"
}

module "Betateam" {
  source         = "./modules"
  instance_count = 1
  ami_id         = "ami-07625b74039b1a58b"
  key            = "devOps-task"
  instance_type  = "t2.micro"
  name           = "Beta machine"
  httpport       = "80"
}

module "FITteam" {
  source         = "./modules"
  instance_count = 1
  ami_id         = "ami-07625b74039b1a58b"
  key            = "devOps-task"
  instance_type  = "t2.micro"
  name           = "FIT machine"
  httpport       = "8080"
}
