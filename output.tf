output "web_server-public-ip" {
  value = aws_instance.web_server.public_ip
}

output "vpc_security_group_ids" {
  value = aws_security_group.web_server_sg.id
}