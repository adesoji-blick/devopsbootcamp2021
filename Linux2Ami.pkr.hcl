packer {
  required_plugins {
    amazon = {
      version = ">= 0.0.2"
      source  = "github.com/hashicorp/amazon"
    }
  }
}

source "amazon-ebs" "linux2" {
  ami_name      = "linux2-ami"
  instance_type = "t2.micro"
  region        = "ca-central-1"
  source_ami_filter {
    filters = {

      root-device-type    = "ebs"
      virtualization-type = "hvm"
    }
    most_recent = true
    owners      = ["099720109477"]
  }
  ssh_username = "ec2-user"
}

build {
  sources = [
    "source.amazon-ebs.linux2"
  ]
}