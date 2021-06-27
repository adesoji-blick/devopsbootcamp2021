output "tool_server-public-ip" {
  value = aws_instance.tool_server.*.public_ip
}
output "tool_server-public-dns" {
  value = aws_instance.tool_server.*.public_dns
}
output "vpc_security_group_ids" {
  value = aws_security_group.tool_server_sg.id
}