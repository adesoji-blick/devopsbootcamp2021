variable "region" {
  default = "ca-central-1"
}

variable "profile" {
  default = "default"
}

variable "ami" {
  default = "ami-07625b74039b1a58b"
}

variable "ssh_key" {
  default = "devOps-task"
}

variable "instance_type" {
  default = "t2.micro"
}

variable "instance_count" {
  default = "3"
}

variable "ami_filter" {
  default = ["packer-amazon-linux-ami"]
}

variable "tag_name" {
  default = ["Beta Server", "FIT Server", "SIT Server"]
}

variable "tag_name_1" {
  default = "Tool Server"
}

variable "environment" {
  default = "development"
}

variable "role" {
  default = "devops_team"
}

