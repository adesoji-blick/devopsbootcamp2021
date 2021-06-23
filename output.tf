output "web_server_Dev-public-ip" {
  value = aws_instance.web_server.public_ip
}

output "web_server_PreProd-public-ip" {
  value = aws_instance.web_server2.public_ip
}

output "web_server_Pod-public-ip" {
  value = aws_instance.web_server3.public_ip
}