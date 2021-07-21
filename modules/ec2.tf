resource "aws_instance" "ec2_module" {
  ami           = var.ami_id
  instance_type = var.instance_type
  count         = var.instance_count
  key_name      = var.key
  #   subnet_id       = aws_subnet.subnet_1.id
  #   security_groups = [aws_security_group.tool_server_sg.id]


  tags = {
    Name = "${var.name} ${count.index + 1}"
    # environment = "${var.environment}"
    # role        = "${var.role}"
  }
}
