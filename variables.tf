variable "ssh_key" {
  description = "this is used for logging in remotely"
  default     = "devOps-task"
}
variable "instance_type" {
  default = "t2.micro"
}
variable "instance_ami" {
  default = "ami-07625b74039b1a58b"
}
variable "tag_name" {
  default = "web-server"
}
