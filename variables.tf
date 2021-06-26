variable "ssh_key" {
  description = "this is used for logging in remotely"
  default     = "devOps-task"
}
variable "instance_type" {
  default = "t2.micro"
}
variable "ami" {
  default = "ami-07625b74039b1a58b"
}
variable "tag_name" {
  default = "Web_Server_2021"
}
variable "bucket" {
  default = "ijoseda-devops"
}
variable "key" {
  default = "Devops2021/DevopsTask/wk2dy5-statefile"
}