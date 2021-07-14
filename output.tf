output "tool_server1-public-ip" {
  value = aws_instance.tool_server1.public_ip
}
output "tool_server2-public-ip" {
  value = aws_instance.tool_server2.public_ip
}
output "build_server-public-ip" {
  value = aws_instance.build_server.public_ip
}
output "vpc_security_group_ids" {
  value = aws_security_group.tool_server_sg.id
}
output "vpc_security_group_ids_2" {
  value = aws_security_group.build_server_sg.id
}
output "aws_subnet_1" {
  value = aws_subnet.subnet_1.id
}
output "aws_subnet_2" {
  value = aws_subnet.subnet_2.id
}
output "aws_subnet_3" {
  value = aws_subnet.subnet_3.id
}