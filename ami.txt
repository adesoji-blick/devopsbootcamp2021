# Use terraform to query latest generated AMI.

data "aws_ami" "packer-ami" {
  # count = 1

  filter {
    name   = "tag:Name"
    values = var.ami_filter
  }

  filter {
    name   = "state"
    values = ["available"]
  }

  most_recent = true
  owners      = ["self"]
}