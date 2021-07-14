variable "ssh_key" {
  default = "devOps-Project"
}

variable "instance_type" {
  default = "t2.micro"
}

variable "ami" {
  default = "ami-07625b74039b1a58b"
}

variable "ubuntu_ami" {
  default = "ami-0ce3f090463976fab"
}

variable "tags_environment" {
  default = "dev"
}

variable "tags_name1" {
  default = "tool_server_1"
}
variable "tags_name2" {
  default = "tool_server_2"
}
variable "tags_name3" {
  default = "build_server"
}