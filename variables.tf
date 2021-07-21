variable "region" {
  default = "ca-central-1"
}

variable "profile" {
  default = "default"
}

variable "ssh_key" {
  default = "devOps-task"
}

# variable "ami_filter" {
#   default = ["packer-amazon-linux-ami1", "packer-amazon-linux-ami2", "packer-ubuntu-ami"]
# }

# variable "ami" {
#   default = "ami-07625b74039b1a58b"
# }

variable "instance_type" {
  default = "t2.micro"
}

variable "instance_count" {
  default = "1"
}

variable "tag_name" {
  default = ["tool_sev_1", "tool_sev_2", "build_sev"]
}

variable "environment" {
  default = "development"
}

variable "role" {
  default = "devops_team"
}
